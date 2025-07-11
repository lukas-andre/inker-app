import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/participating_quotations/participating_quotations_bloc.dart';
import 'package:inker_studio/domain/blocs/quoation/open_quotation_list/open_quotation_list_bloc.dart';
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
  State<WorkTabPage> createState() => _WorkTabPageState();
}

class _WorkTabPageState extends State<WorkTabPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

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
        
        // Refresh the appropriate tab when switching
        if (_tabController.index == 0) {
          // Refresh Open Quotations
          context.read<OpenQuotationListBloc>().add(
            const OpenQuotationListEvent.refreshOpenQuotations(),
          );
        } else if (_tabController.index == 1) {
          // Refresh Participating Quotations
          final participatingBloc = context.read<ParticipatingQuotationsBloc>();
          participatingBloc.add(const ParticipatingQuotationsEvent.refresh());
        }
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
        children: [
          // Tab 1: Open Quotations
          const OpenQuotationsTabView(),
          // Tab 2: Participating Quotations
          BlocProvider(
            create: (context) => ParticipatingQuotationsBloc(
              quotationService: context.read(),
              sessionService: context.read(),
            ),
            child: const ParticipatingQuotationsTabView(),
          ),
        ],
      ),
    );
  }
}
