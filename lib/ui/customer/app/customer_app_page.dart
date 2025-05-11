import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/customer/appointment/appointment_bloc.dart';
import 'package:inker_studio/domain/blocs/customer/customer_app/customer_app_bloc.dart';
import 'package:inker_studio/domain/blocs/customer/inspiration_search/inspiration_search_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/explorer_page/explorer_page_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';
import 'package:inker_studio/domain/blocs/notifications/notifications_bloc.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/artist/work/open_quotations_tab_view.dart';
import 'package:inker_studio/ui/customer/app/my_profile/customer_my_profile_page.dart';
import 'package:inker_studio/ui/customer/appointments/customer_appointments_page.dart';
import 'package:inker_studio/ui/customer/explore/loading_map_page.dart';
import 'package:inker_studio/ui/customer/explore/views/search/search_artist_view.dart';
import 'package:inker_studio/ui/customer/inspiration_search/inspiration_search_page.dart';
import 'package:inker_studio/ui/notifications/notification_page.dart';
import 'package:inker_studio/ui/quotation/quotation_list_page.dart';
import 'package:inker_studio/ui/shared/notification_badge.dart';
import 'package:inker_studio/ui/theme/overlay_style.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:inker_studio/domain/blocs/auth/auth_bloc.dart';

class CustomerAppPage extends StatefulWidget {
  const CustomerAppPage({super.key});

  @override
  _CustomerAppPageState createState() => _CustomerAppPageState();
}

class _CustomerAppPageState extends State<CustomerAppPage> {
  int _selectedIndex = 2;
  List<Widget> get _pageWidgets => <Widget>[
        const BuildMapPage(hideHeader: true),
        const CustomerQuotationsTabView(),
        BlocProvider(
          create: (context) => InspirationSearchBloc(
            stencilService: context.read(),
            workService: context.read(),
            sessionService: context.read(),
          ),
          child: const InspirationSearchPage(hideHeader: true),
        ),
        BlocProvider(
          create: (context) => AppointmentBloc(
            appointmentService: context.read(),
            sessionService: context.read(),
          ),
          child: const CustomerAppointmentsPage(hideHeader: true),
        ),
        const CustomerMyProfilePage(hideHeader: true)
      ];

  @override
  void initState() {
    super.initState();

    // Refresh notifications when the page is shown
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Request a refresh of notifications to get accurate count
      context.read<NotificationsBloc>().add(
            const NotificationsEvent.refreshNotifications(),
          );
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // This will be called when returning to this page from other routes
    if (ModalRoute.of(context)?.isCurrent == true) {
      context.read<NotificationsBloc>().add(
            const NotificationsEvent.refreshNotifications(),
          );
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String _getAppBarTitle() {
    switch (_selectedIndex) {
      case 0:
        return S.of(context).explore;
      case 1:
        return S.of(context).quotations;
      case 2:
        return S.of(context).inspiration;
      case 3:
        return S.of(context).myAppointments;
      default:
        return '';
    }
  }

  // Get the appropriate action buttons based on the selected tab
  List<Widget> _getAppBarActions() {
    final List<Widget> actions = [];

    // Add page-specific action buttons based on selected index
    if (_selectedIndex == 0) {
      // Explorar page
      // Barra de búsqueda en la parte superior central
      if (MediaQuery.of(context).size.width > 380) {
        // Si hay suficiente espacio añadimos la barra de búsqueda en el AppBar
        actions.add(
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SearchArtistView(),
                    ),
                  );
                },
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: explorerSecondaryColor.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 12),
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: secondaryColor.withOpacity(0.8),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.search,
                            color: Colors.white, size: 16),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Buscar artistas...',
                        style: TextStyleTheme.copyWith(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(4),
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                          color: explorerSecondaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.tune,
                            color: Colors.white, size: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      } else {
        // Para pantallas pequeñas, solo mostramos un icono de búsqueda
        actions.add(
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SearchArtistView(),
                ),
              );
            },
          ),
        );
      }

      // Añadir botones de cambio de vista (mapa/lista) en el AppBar
      actions.add(
        BlocBuilder<ExplorerPageBloc, ExplorerPageState>(
          builder: (context, state) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Botón de Lista
                IconButton(
                  icon: Icon(
                    Icons.grid_view_rounded,
                    color: state.view == ExplorerView.list
                        ? secondaryColor
                        : Colors.white,
                  ),
                  onPressed: () {
                    context.read<ExplorerPageBloc>().add(
                        const ExplorerPageEventViewChanged(
                            view: ExplorerView.list));
                    context.read<MapBloc>().add(
                        const DeselectAllMarkerEvent(closeDragSheet: true));
                    OverlayStyle.setWhite();
                  },
                ),
                // Botón de Mapa
                IconButton(
                  icon: Icon(
                    Icons.map_rounded,
                    color: state.view == ExplorerView.map
                        ? secondaryColor
                        : Colors.white,
                  ),
                  onPressed: () {
                    context.read<ExplorerPageBloc>().add(
                        const ExplorerPageEventViewChanged(
                            view: ExplorerView.map));
                    OverlayStyle.setBlack();
                  },
                ),
              ],
            );
          },
        ),
      );
    } else if (_selectedIndex == 1) {
      // Cotizaciones page
      // Aquí podrías agregar botones específicos para la página de cotizaciones
    } else if (_selectedIndex == 2) {
      // Inspiración page
      // Add filter button or other controls for inspiration search
      // actions.add(
      //   IconButton(
      //     icon: const Icon(Icons.tune, color: Colors.white),
      //     onPressed: () {
      //       // Show filters dialog for inspiration search
      //     },
      //   ),
      // );
    } else if (_selectedIndex == 3) {
      // Citas page
      // Acciones específicas para la página de citas
      actions.add(
        IconButton(
          icon: const Icon(
            Icons.refresh,
            color: Colors.white,
          ),
          onPressed: () {
            // Refresh appointments logic
          },
        ),
      );
    }

    // Add notification badge for all pages except profile
    if (_selectedIndex != 4) {
      actions.add(BlocBuilder<NotificationsBloc, NotificationsState>(
        builder: (context, state) {
          return state.when(
            initial: () => NotificationBadge(
              count: 0,
              onTap: () {
                Navigator.of(context).pushNamed(NotificationsPage.routeName);
              },
            ),
            loading: () => NotificationBadge(
              count: 0,
              onTap: () {
                Navigator.of(context).pushNamed(NotificationsPage.routeName);
              },
            ),
            loaded: (fcmToken,
                permissionsGranted,
                pendingNavigation,
                lastMessage,
                lastMessageAppState,
                notifications,
                isLoading,
                isRefreshing,
                hasError,
                errorMessage,
                currentPage,
                totalPages,
                unreadCount) {
              return NotificationBadge(
                count: unreadCount,
                onTap: () {
                  Navigator.of(context).pushNamed(NotificationsPage.routeName);
                },
              );
            },
            error: (message) => NotificationBadge(
              count: 0,
              onTap: () {
                Navigator.of(context).pushNamed(NotificationsPage.routeName);
              },
            ),
          );
        },
      ));
      actions.add(const SizedBox(width: 8));
    }

    return actions;
  }

  @override
  Widget build(BuildContext context) {
    final customerAppBloc = BlocProvider.of<CustomerAppBloc>(context);
    final state = customerAppBloc.state;
    final icons = state.customerPageNavBarIcons.icons;
    return Scaffold(
        backgroundColor: primaryColor,
        appBar: _selectedIndex != 4
            ? AppBar(
                title: Text(
                  _getAppBarTitle(),
                  style: TextStyleTheme.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                elevation: 0,
                backgroundColor: primaryColor,
                actions: _getAppBarActions(),
              )
            : null,
        body: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: IndexedStack(
              index: _selectedIndex,
              children: _pageWidgets,
            )),
        bottomNavigationBar: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: primaryColor,
            unselectedItemColor: Colors.white60,
            selectedLabelStyle: TextStyleTheme.copyWith(
                fontSize: 12, fontWeight: FontWeight.w200),
            selectedItemColor: Colors.white,
            unselectedLabelStyle: TextStyleTheme.copyWith(
                fontSize: 12, fontWeight: FontWeight.w200),
            items: [
              for (int index = 0; index < icons.length; index++)
                BottomNavigationBarItem(
                  key: icons[index].key,
                  icon: index == 2
                      ? Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: _selectedIndex == 2
                                ? secondaryColor
                                : primaryColor,
                            shape: BoxShape.circle,
                            boxShadow: _selectedIndex == 2
                                ? [
                                    BoxShadow(
                                        color: secondaryColor.withOpacity(0.6),
                                        blurRadius: 10,
                                        spreadRadius: 2)
                                  ]
                                : null,
                          ),
                          child: icons[index].icon,
                        )
                      : icons[index].icon,
                  activeIcon: index == 2
                      ? Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: secondaryColor.withOpacity(0.6),
                                  blurRadius: 10,
                                  spreadRadius: 2)
                            ],
                          ),
                          child: icons[index].selectedIcon,
                        )
                      : icons[index].selectedIcon,
                  label: icons[index].title,
                )
            ],
            currentIndex: _selectedIndex,
            type: BottomNavigationBarType.fixed,
            onTap: _onItemTapped,
          ),
        ));
  }
}

class CustomerQuotationsTabView extends StatelessWidget {
  const CustomerQuotationsTabView({super.key});

  @override
  Widget build(BuildContext context) {
    final currentUserId =
        context.read<AuthBloc>().state.session.user?.userTypeId;
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Material(
            color: primaryColor,
            child: TabBar(
              indicatorColor: secondaryColor,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white60,
              tabs: [
                Tab(text: S.of(context).public),
                Tab(text: S.of(context).directQuotations),
              ],
            ),
          ),
          const Expanded(
            child: TabBarView(
              children: [
                OpenQuotationsTabView(),
                QuotationListPage(hideHeader: true),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
