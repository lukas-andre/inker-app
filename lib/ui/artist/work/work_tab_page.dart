import 'package:flutter/material.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/artist/work/open_quotations_tab_view.dart';
import 'package:inker_studio/ui/artist/work/participating_quotations_tab_view.dart';

class WorkTabPage extends StatefulWidget {
  final ValueNotifier<int>? currentTabNotifier;
  final int? initialTabIndex;
  
  const WorkTabPage({
    super.key,
    this.currentTabNotifier,
    this.initialTabIndex,
  });

  @override
  State<WorkTabPage> createState() => WorkTabPageState();
}

// Make state class public to access from parent
class WorkTabPageState extends State<WorkTabPage>

    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  
  int get currentTabIndex => _tabController.index;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: widget.initialTabIndex ?? widget.currentTabNotifier?.value ?? 0,
    );
    
    // Update notifier when tab changes
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        widget.currentTabNotifier?.value = _tabController.index;
        
        // Don't refresh automatically when switching tabs
        // Let the user control when to refresh
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);

    return Scaffold(
      backgroundColor:
          Theme.of(context).colorScheme.surface, // Match existing background
      appBar: AppBar(
        automaticallyImplyLeading: false, // No back button needed here
        elevation: 0,
        toolbarHeight: 0, // Hide the default AppBar visually
        backgroundColor: Theme.of(context).colorScheme.surface,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Theme.of(context)
              .colorScheme
              .secondary, // Use app's secondary color
          labelColor: Colors.white, // Active tab label color
          unselectedLabelColor: Colors.grey[400], // Inactive tab label color
          indicatorWeight: 3.0,
          labelStyle:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          unselectedLabelStyle:
              const TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
          tabs: const [
            Tab(text: 'Oportunidades'), // TODO: Add to localization
            Tab(text: 'Mis Propuestas'), // TODO: Add to localization
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          // Tab 1: Open Quotations
          OpenQuotationsTabView(),
          // Tab 2: Participating Quotations
          ParticipatingQuotationsTabView(),
        ],
      ),
    );
  }
}
