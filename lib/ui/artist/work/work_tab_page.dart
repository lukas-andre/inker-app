import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/participating_quotations/participating_quotations_bloc.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/artist/work/open_quotations_tab_view.dart';
import 'package:inker_studio/ui/artist/work/participating_quotations_tab_view.dart';
import 'package:inker_studio/utils/styles/app_styles.dart'; // For colors

class WorkTabPage extends StatefulWidget {
  const WorkTabPage({super.key});

  @override
  State<WorkTabPage> createState() => _WorkTabPageState();
}

class _WorkTabPageState extends State<WorkTabPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
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
      backgroundColor: primaryColor, // Match existing background
      appBar: AppBar(
        automaticallyImplyLeading: false, // No back button needed here
        elevation: 0,
        toolbarHeight: 0, // Hide the default AppBar visually
        backgroundColor: primaryColor,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: secondaryColor, // Use app's secondary color
          labelColor: Colors.white, // Active tab label color
          unselectedLabelColor: Colors.grey[400], // Inactive tab label color
          indicatorWeight: 3.0,
          labelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
          tabs: [
            Tab(text: S.of(context).openQuotations),
            Tab(text: S.of(context).directQuotations),
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