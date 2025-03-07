import 'package:flutter/material.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class AppointmentFilterTabs extends StatefulWidget {
  final String? currentFilter;
  final Function(String) onFilterChanged;

  const AppointmentFilterTabs({
    Key? key,
    this.currentFilter,
    required this.onFilterChanged,
  }) : super(key: key);

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

  @override
  void initState() {
    super.initState();
    // Set initial tab based on current filter
    int initialIndex = 0;
    if (widget.currentFilter != null) {
      final index = _filters.indexOf(widget.currentFilter!);
      if (index >= 0) {
        initialIndex = index;
      }
    }
    
    _tabController = TabController(
      length: _filters.length,
      vsync: this,
      initialIndex: initialIndex,
    );
    
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        widget.onFilterChanged(_filters[_tabController.index]);
      }
    });
  }

  @override
  void didUpdateWidget(AppointmentFilterTabs oldWidget) {
    super.didUpdateWidget(oldWidget);
    
    // Update tab controller if filter changes externally
    if (widget.currentFilter != oldWidget.currentFilter && widget.currentFilter != null) {
      final index = _filters.indexOf(widget.currentFilter!);
      if (index >= 0 && index != _tabController.index) {
        _tabController.animateTo(index);
      }
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
        tabs: [
          const Tab(text: 'Todas'),
          const Tab(text: 'Programadas'),
          const Tab(text: 'En Progreso'),
          const Tab(text: 'Esperando Fotos'),
          const Tab(text: 'Por Reseñar'),
          const Tab(text: 'Completadas'),
          const Tab(text: 'Canceladas'),
        ],
      ),
    );
  }
}