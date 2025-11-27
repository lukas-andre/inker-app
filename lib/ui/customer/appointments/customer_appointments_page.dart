import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/customer/appointment/appointment_bloc.dart';
import 'package:inker_studio/ui/customer/appointments/widgets/appointment_group_list.dart';
import 'package:inker_studio/ui/customer/appointments/widgets/hero_appointment_card.dart';
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
  @override
  void initState() {
    super.initState();
    context.read<AppointmentBloc>().add(const AppointmentEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: widget.hideHeader
          ? null
          : AppBar(
              title: Text(
                'Mis Citas',
                style: TextStyleTheme.headline2.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              elevation: 0,
              backgroundColor: Theme.of(context).colorScheme.surface,
            ),
      body: BlocBuilder<AppointmentBloc, AppointmentState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: InkerProgressIndicator()),
            loading: () => const Center(child: InkerProgressIndicator()),
            loaded: (view, selectedAppointment) {
              final heroAppointment = view.heroAppointment;
              final grouped = view.appointments;
              final allAppointments = [
                ...grouped.requiringAction,
                ...grouped.today,
                ...grouped.thisWeek,
                ...grouped.upcoming,
                ...grouped.history
              ];

              if (heroAppointment == null && allAppointments.isEmpty) {
                return const EmptyState(
                  icon: Icons.calendar_today_outlined,
                  title: 'No tienes citas programadas',
                  message:
                      'Cuando tengas una cita, aparecerá aquí.',
                );
              }

              return RefreshIndicator(
                onRefresh: () async {
                  context
                      .read<AppointmentBloc>()
                      .add(const AppointmentEvent.loadAppointments());
                },
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      if (heroAppointment != null)
                        HeroAppointmentCard(appointment: heroAppointment),
                      AppointmentGroupList(
                        title: 'Requieren tu Acción',
                        appointments: grouped.requiringAction,
                      ),
                      AppointmentGroupList(
                        title: 'Hoy',
                        appointments: grouped.today,
                      ),
                      AppointmentGroupList(
                        title: 'Esta Semana',
                        appointments: grouped.thisWeek,
                      ),
                      AppointmentGroupList(
                        title: 'Próximas',
                        appointments: grouped.upcoming,
                      ),
                      AppointmentGroupList(
                        title: 'Historial',
                        appointments: grouped.history,
                      ),
                    ],
                  ),
                ),
              );
            },
            actionInProgress: () => const Center(child: InkerProgressIndicator()),
            actionSuccess: () => Center(
              child: Text(
                'Acción completada con éxito',
                style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
              ),
            ),
            actionFailed: (message) => Center(
              child: Text(
                'Error: $message',
                style: TextStyleTheme.bodyText1.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
            ),
            error: (message) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_outline,
                    color: Theme.of(context).colorScheme.error,
                    size: 48,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Error al cargar las citas',
                    style: TextStyleTheme.headline3.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      message,
                      style: TextStyleTheme.bodyText1.copyWith(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      context
                          .read<AppointmentBloc>()
                          .add(const AppointmentEvent.loadAppointments());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 12,
                      ),
                    ),
                    child: Text(
                      'Reintentar',
                      style: TextStyleTheme.button.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
