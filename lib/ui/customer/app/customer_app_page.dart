import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/customer/appointment/appointment_bloc.dart';
import 'package:inker_studio/domain/blocs/customer/customer_app/customer_app_bloc.dart';
import 'package:inker_studio/domain/blocs/notifications/notifications_bloc.dart';
import 'package:inker_studio/ui/customer/app/my_profile/customer_my_profile_page.dart';
import 'package:inker_studio/ui/customer/appointments/customer_appointments_page.dart';
import 'package:inker_studio/ui/customer/explore/loading_map_page.dart';
import 'package:inker_studio/ui/notifications/notification_page.dart';
import 'package:inker_studio/ui/quotation/quotation_list_page.dart';
import 'package:inker_studio/ui/shared/notification_badge.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class CustomerAppPage extends StatefulWidget {
  const CustomerAppPage({super.key});

  @override
  _CustomerAppPageState createState() => _CustomerAppPageState();
}

class _CustomerAppPageState extends State<CustomerAppPage> {
  int _selectedIndex = 0;
  List<Widget> get _pageWidgets => <Widget>[
    const BuildMapPage(),
    const QuotationListPage(),
    BlocProvider(
      create: (context) => AppointmentBloc(
        appointmentService: context.read(),
        sessionService: context.read(),
      ),
      child: const CustomerAppointmentsPage(),
    ),
    const CustomerMyProfilePage()
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
  
  Widget _getAppBarTitle() {
    switch (_selectedIndex) {
      case 0:
        return const Text('Explorar');
      case 1:
        return const Text('Cotizaciones');
      case 2:
        return const Text('Mis Citas');
      default:
        return const Text('');
    }
  }

  @override
  Widget build(BuildContext context) {
    final customerAppBloc = BlocProvider.of<CustomerAppBloc>(context);
    final state = customerAppBloc.state;
    final icons = state.customerPageNavBarIcons.icons;
    return Scaffold(
        appBar: _selectedIndex != 3 ? AppBar(
          title: _getAppBarTitle(),
          elevation: 0,
          backgroundColor: primaryColor,
          actions: [
            BlocBuilder<NotificationsBloc, NotificationsState>(
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
                  loaded: (fcmToken, permissionsGranted, pendingNavigation, 
                      lastMessage, lastMessageAppState, notifications, 
                      isLoading, isRefreshing, hasError, errorMessage, 
                      currentPage, totalPages, unreadCount) {
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
            ),
            const SizedBox(width: 8),
          ],
        ) : null,
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
                  icon: icons[index].icon,
                  activeIcon: icons[index].selectedIcon,
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
