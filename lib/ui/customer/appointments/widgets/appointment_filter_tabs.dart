import 'package:flutter/material.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class AppointmentFilterTabs extends StatefulWidget {
  final String? currentFilter;
  final Function(String) onFilterChanged;

  const AppointmentFilterTabs({
    super.key,
    this.currentFilter,
    required this.onFilterChanged,
  });
  
  @override
  State<AppointmentFilterTabs> createState() => _AppointmentFilterTabsState();
}

class _AppointmentFilterTabsState extends State<AppointmentFilterTabs> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> _filters = [
    'all',
    'scheduled',
    'inProgress',
    'waitingForPhotos',
    'waitingForReview',
    'completed',
    'canceled',
  ];

  // Keep track of the last selected index to prevent unwanted jumps
  // Using static variable to ensure persistence across widget rebuilds and state changes
  static int _lastSelectedIndex = 0;
  static String? _lastSelectedFilter;
  bool _ignoreTabChange = false;
  
  @override
  void initState() {
    super.initState();
    
    // Determine initial index - prioritize current filter from widget, then last selected
    int initialIndex = _lastSelectedIndex;
    
    if (widget.currentFilter != null) {
      // If widget has a filter, use it unless it's the same as our last filter
      if (widget.currentFilter != _lastSelectedFilter) {
        final index = _filters.indexOf(widget.currentFilter!);
        if (index >= 0) {
          initialIndex = index;
          _lastSelectedIndex = index;
          _lastSelectedFilter = widget.currentFilter;
        }
      }
    }
    
    _tabController = TabController(
      length: _filters.length,
      vsync: this,
      initialIndex: initialIndex,
    );
    
    _tabController.addListener(() {
      // Only trigger callback when user changes tab (not programmatic changes)
      if (!_tabController.indexIsChanging && !_ignoreTabChange) {
        _lastSelectedIndex = _tabController.index;
        _lastSelectedFilter = _filters[_tabController.index];
        widget.onFilterChanged(_filters[_tabController.index]);
      }
    });
  }

  @override
  void didUpdateWidget(AppointmentFilterTabs oldWidget) {
    super.didUpdateWidget(oldWidget);
    
    // Only use the widget's filter if it's explicitly changing from the old widget
    if (widget.currentFilter != oldWidget.currentFilter && widget.currentFilter != null) {
      // If the new filter is different from our tracked filter, it's coming from a state change
      if (widget.currentFilter != _lastSelectedFilter) {
        final index = _filters.indexOf(widget.currentFilter!);
        
        if (index >= 0) {
          // External filter change - don't update our tracking, just show the right tab
          _ignoreTabChange = true;
          if (index != _tabController.index) {
            _tabController.animateTo(index);
          }
          _ignoreTabChange = false;
        }
      }
    }
    
    // Always make sure tab controller shows our last selected index (preventing tab jumps)
    if (_tabController.index != _lastSelectedIndex && _lastSelectedFilter != null) {
      _ignoreTabChange = true;
      _tabController.animateTo(_lastSelectedIndex);
      _ignoreTabChange = false;
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Make sure the tab controller is at the correct index on every rebuild
    if (_tabController.index != _lastSelectedIndex) {
      // Use Future.microtask to avoid build phase issues
      Future.microtask(() {
        if (mounted) {
          _ignoreTabChange = true;
          _tabController.animateTo(_lastSelectedIndex);
          _ignoreTabChange = false;
        }
      });
    }
    
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: primaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TabBar(
        controller: _tabController,
        isScrollable: true,
        indicatorColor: secondaryColor,
        indicatorWeight: 3,
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white.withOpacity(0.6),
        labelStyle: TextStyleTheme.subtitle2,
        tabs: const [
          Tab(text: 'Todas'),
          Tab(text: 'Programadas'),
          Tab(text: 'En Progreso'),
          Tab(text: 'Esperando Fotos'),
          Tab(text: 'Por Reseñar'),
          Tab(text: 'Completadas'),
          Tab(text: 'Canceladas'),
        ],
      ),
    );
  }
}