import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda/artist_agenda_bloc.dart';
import 'package:inker_studio/domain/blocs/artist/artist_agenda_settings/artist_agenda_settings_bloc.dart';
import 'package:inker_studio/domain/blocs/auth/auth_bloc.dart';
import 'package:inker_studio/domain/blocs/notifications/notifications_bloc.dart';
import 'package:inker_studio/ui/artist/work/work_tab_page.dart';
import 'package:inker_studio/ui/quotation/open_quotation_list_page.dart';
import 'package:inker_studio/ui/artist/agenda/agenda_page.dart';
import 'package:inker_studio/ui/artist/agenda/agenda_settings_page.dart';
import 'package:inker_studio/ui/artist/profile/artist_my_profile_page.dart';
import 'package:inker_studio/ui/notifications/notification_page.dart';
import 'package:inker_studio/ui/quotation/quotation_list_page.dart';
import 'package:inker_studio/ui/shared/notification_badge.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:inker_studio/domain/blocs/artist/artist_app/artist_app_bloc.dart';

class ArtistAppPage extends StatefulWidget {
  const ArtistAppPage({super.key});

  @override
  _ArtistAppPageState createState() => _ArtistAppPageState();
}

class _ArtistAppPageState extends State<ArtistAppPage> {
  int _selectedIndex = 1;
  static const List<Widget> _pageWidgets = <Widget>[
    AgendaTablePage(hideHeader: true),
    QuotationListPage(hideHeader: true),
    WorkTabPage(),
    ArtistMyProfilePage(),
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
        return 'Agenda';
      case 1:
        return 'Mis Solicitudes';
      case 2:
        return 'Trabajos';
      default:
        return '';
    }
  }

  // Get the appropriate action buttons based on the selected tab
  List<Widget> _getAppBarActions() {
    final List<Widget> actions = [];
    
    // Add page-specific action buttons
    if (_selectedIndex == 0) {  // Agenda page
      actions.addAll([
        IconButton(
          icon: const Icon(
            Icons.settings,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BlocProvider(
                  create: (context) => ArtistAgendaSettingsBloc(
                    agendaService: context.read(),
                    sessionService: context.read(),
                  ),
                  child: const AgendaSettingsPage(),
                ),
              ),
            );
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.refresh,
            color: Colors.white,
          ),
          onPressed: () {
            context
                .read<ArtistAgendaBloc>()
                .add(const ArtistAgendaEvent.refreshed());
          },
        ),
      ]);
    }
    
    // Add notification badge for all pages except profile
    if (_selectedIndex != 3) {
      actions.add(
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
        )
      );
      actions.add(const SizedBox(width: 8));
    }
    
    return actions;
  }

  @override
  Widget build(BuildContext context) {
    final artistAppBloc = context.read<ArtistAppBloc>();
    final state = artistAppBloc.state;
    final icons = state.artistPageNavBarIcons.icons;
    
    final bool showAppBar = _selectedIndex != 3;
    
    return Scaffold(
      appBar: showAppBar ? AppBar(
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
      ) : null,
      body: IndexedStack(
        index: _selectedIndex,
        children: _pageWidgets,
      ),
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
            fontSize: 12, 
            fontWeight: FontWeight.w200
          ),
          selectedItemColor: Colors.white,
          unselectedLabelStyle: TextStyleTheme.copyWith(
            fontSize: 12, 
            fontWeight: FontWeight.w200
          ),
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
      )
    );
  }
}