import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/customer/customer_app/customer_app_bloc.dart';

class CustomerAppPage extends StatefulWidget {
  const CustomerAppPage({Key? key}) : super(key: key);

  @override
  _CustomerAppPageState createState() => _CustomerAppPageState();
}

class _CustomerAppPageState extends State<CustomerAppPage> {
  List<Widget> pageWidgets = [
    const Text('One'),
    const Text('Two'),
    const Text('Three'),
    const Text('Four'),
    const Text('Five')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('BottomNavDemo'),
      ),
      body: BlocBuilder<CustomerAppBloc, CustomerAppState>(
        buildWhen: (previous, current) => previous.index != current.index,
        builder: (context, state) {
          return Center(child: pageWidgets[state.index]);
        },
      ),
      bottomNavigationBar: BlocBuilder<CustomerAppBloc, CustomerAppState>(
        buildWhen: (previous, current) => previous.index != current.index,
        builder: (context, state) {
          final icons = state.customerPageNavBarIcons.icons;
          return Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
              backgroundColor: const Color(0xff131731),
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: [
                for (int index = 0; index < icons.length; index++)
                  BottomNavigationBarItem(
                      icon: icons[index].icon,
                      activeIcon: icons[index].selectedIcon,
                      label: ''),
              ],
              currentIndex: state.index,
              type: BottomNavigationBarType.fixed,
              onTap: (i) {
                context.read<CustomerAppBloc>().add(
                      CustomerAppPageIndexChanged(
                        index: i,
                      ),
                    );
              },
            ),
          );
        },
      ),
    );
  }
}
