import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/customer/customer_app/customer_app_bloc.dart';
import 'package:inker_studio/ui/customer/app/my_profile/customer_my_profile_page.dart';
import 'package:inker_studio/ui/customer/explore/loading_map_page.dart';
import 'package:inker_studio/ui/quotation/quotation_list_page.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class CustomerAppPage extends StatefulWidget {
  const CustomerAppPage({super.key});

  @override
  _CustomerAppPageState createState() => _CustomerAppPageState();
}

class _CustomerAppPageState extends State<CustomerAppPage> {
  int _selectedIndex = 0;
  static const List<Widget> _pageWidgets = <Widget>[
    BuildMapPage(),
    QuotationListPage(),
    CustomerMyProfilePage()
  ];

  @override
  void initState() {
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final customerAppBloc = BlocProvider.of<CustomerAppBloc>(context);
    final state = customerAppBloc.state;
    final icons = state.customerPageNavBarIcons.icons;
    return Scaffold(
        body: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: _pageWidgets.elementAt(_selectedIndex)),
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
