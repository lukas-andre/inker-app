import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/customer/appointment/appointment_bloc.dart';
import 'package:inker_studio/ui/customer/appointments/widgets/appointment_card.dart';
import 'package:inker_studio/ui/customer/appointments/widgets/appointment_filter_tabs.dart';
import 'package:inker_studio/ui/shared/empty_state.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';

class CustomerAppointmentsPage extends StatefulWidget {
  static const String routeName = '/appointments';
  final bool hideHeader;

  const CustomerAppointmentsPage({super.key, this.hideHeader = false});

  @override
  State<CustomerAppointmentsPage> createState() =>
      _CustomerAppointmentsPageState();
}

class _CustomerAppointmentsPageState extends State<CustomerAppointmentsPage> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // Initialize appointment bloc
    context.read<AppointmentBloc>().add(const AppointmentEvent.started());
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context
          .read<AppointmentBloc>()
          .add(const AppointmentEvent.loadMoreAppointments());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      // Si hideHeader es true, no mostramos un AppBar propio, ya que lo gestiona la página principal
      appBar: widget.hideHeader
          ? null
          : AppBar(
              title: Text(
                'Mis Citas',
                style: TextStyleTheme.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              elevation: 0,
              backgroundColor: Theme.of(context).colorScheme.surface,
            ),
      body: BlocBuilder<AppointmentBloc, AppointmentState>(
        builder: (context, state) {
          // Extract current filter if available
          String? currentFilter = state.maybeWhen(
            loaded: (_, __, ___, ____, _____, ______, currentFilter, ________) =>
                currentFilter,
            loadingMoreFailed: (_, __, ___, currentFilter, ____) =>
                currentFilter,
            error: (_, preservedFilter) => preservedFilter,
            orElse: () => null,
          );

          // Always show filter tabs at the top, regardless of state
          return Column(
            children: [
              // Filter tabs are always visible
              AppointmentFilterTabs(
                currentFilter: currentFilter ?? 'all',
                onFilterChanged: (filter) {
                  context.read<AppointmentBloc>().add(
                        AppointmentEvent.loadAppointments(status: filter),
                      );
                },
              ),

              // Content area changes based on state
              Expanded(
                child: state.when(
                  initial: () => const Center(child: InkerProgressIndicator()),
                  loading: () => const Center(child: InkerProgressIndicator()),
                  loaded: (appointments, currentPage, totalPages, hasReachedMax,
                      isLoadingMore, isRefreshing, currentFilter, selectedAppointment) {
                    if (appointments.isEmpty) {
                      // Use different message based on the filter
                      String title;
                      if (currentFilter == null || currentFilter == 'all') {
                        title = 'No hay citas programadas';
                      } else {
                        title = 'No hay citas con este estado';
                      }

                      return EmptyState(
                        icon: Icons.calendar_today,
                        title: title,
                        message: 'Prueba con otro filtro o regresa más tarde.',
                      );
                    }
                    return RefreshIndicator(
                      onRefresh: () {
                        context.read<AppointmentBloc>().add(
                              AppointmentEvent.loadAppointments(
                                status: currentFilter,
                                isRefresh: true,
                              ),
                            );
                        return Future.delayed(
                            const Duration(milliseconds: 300));
                      },
                      child: ListView.builder(
                        controller: _scrollController,
                        itemCount:
                            appointments.length + (isLoadingMore ? 1 : 0),
                        itemBuilder: (context, index) {
                          if (index == appointments.length) {
                            return const Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 16),
                                child: SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2.5,
                                    color: Colors.white70,
                                  ),
                                ),
                              ),
                            );
                          }

                          final appointment = appointments[index];
                          return AppointmentCard(
                            key: ValueKey(appointment.id),
                            appointment: appointment,
                            onTap: () {
                              // If not read, mark as read
                              if (appointment.readByCustomer == false) {
                                context.read<AppointmentBloc>().add(
                                      AppointmentEvent.markAsRead(
                                          appointment.id),
                                    );
                              }

                              // Navigate to appointment detail
                              Navigator.pushNamed(
                                context,
                                '/appointmentDetail',
                                arguments: {
                                  'appointmentId': appointment.id,
                                },
                              );
                            },
                          );
                        },
                      ),
                    );
                  },
                  loadingMoreFailed: (appointments, currentPage, totalPages,
                      currentFilter, errorMessage) {
                    if (appointments.isEmpty) {
                      // Use different message based on the filter
                      String title;
                      if (currentFilter == null || currentFilter == 'all') {
                        title = 'No hay citas programadas';
                      } else {
                        title = 'No hay citas con este estado';
                      }

                      return EmptyState(
                        icon: Icons.calendar_today,
                        title: title,
                        message: 'Prueba con otro filtro o regresa más tarde.',
                      );
                    }

                    return ListView.builder(
                      controller: _scrollController,
                      itemCount:
                          appointments.length + 1, // +1 for error message
                      itemBuilder: (context, index) {
                        if (index == appointments.length) {
                          return Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    'Error al cargar más citas',
                                    style: TextStyleTheme.subtitle2
                                        .copyWith(color: Colors.white),
                                  ),
                                  const SizedBox(height: 8),
                                  ElevatedButton(
                                    onPressed: () {
                                      context.read<AppointmentBloc>().add(
                                            const AppointmentEvent
                                                .loadMoreAppointments(),
                                          );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                    ),
                                    child: const Text('Reintentar'),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }

                        final appointment = appointments[index];
                        return AppointmentCard(
                          key: ValueKey(appointment.id),
                          appointment: appointment,
                          onTap: () {
                            // If not read, mark as read
                            if (appointment.readByCustomer == false) {
                              context.read<AppointmentBloc>().add(
                                    AppointmentEvent.markAsRead(appointment.id),
                                  );
                            }

                            // Navigate to appointment detail
                            Navigator.pushNamed(
                              context,
                              '/appointmentDetail',
                              arguments: {
                                'appointmentId': appointment.id,
                              },
                            );
                          },
                        );
                      },
                    );
                  },
                  actionInProgress: () =>
                      const Center(child: InkerProgressIndicator()),
                  actionSuccess: () =>
                      const Center(child: Text('Acción completada con éxito')),
                  actionFailed: (message) => Center(
                    child: Text('Error: $message'),
                  ),
                  error: (message, preservedFilter) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.error_outline,
                              color: Colors.red, size: 48),
                          const SizedBox(height: 16),
                          Text(
                            'Error al cargar las citas',
                            style: TextStyleTheme.headline3
                                .copyWith(color: Colors.white),
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Text(
                              message,
                              style: TextStyleTheme.bodyText1
                                  .copyWith(color: Colors.white70),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 24),
                          ElevatedButton(
                            onPressed: () {
                              // Retry with preserved filter
                              context.read<AppointmentBloc>().add(
                                    AppointmentEvent.loadAppointments(
                                        status: preservedFilter),
                                  );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).colorScheme.secondary,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 12),
                            ),
                            child: const Text('Reintentar'),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
