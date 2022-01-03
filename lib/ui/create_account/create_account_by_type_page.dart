import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'create_customer/create_customer_page.dart';

class CreateUserByTypePage extends StatelessWidget {
  const CreateUserByTypePage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(
        builder: (_) => const CreateUserByTypePage());
  }

  @override
  Widget build(BuildContext context) {
    var butttonStyle = TextButton.styleFrom(
        primary: Colors.white,
        onSurface: Colors.red,
        elevation: 0.1,
        backgroundColor: Color.fromRGBO(45, 47, 60, 1),
        minimumSize: const Size(300.0, 150.0));
    return Scaffold(
      appBar: AppBar(title: const Text('Create User By Type')),
      body: Container(
        color: Color.fromRGBO(38, 40, 54, 1),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Que gusto que quieras registrarte con nosotros",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              Text("Cuéntanos, como te gustaría registrarte?",
                  style: TextStyle(fontSize: 15, color: Colors.white)),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    style: butttonStyle,
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            width: 199,
                            height: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                    'assets/PNG/Paints_perspective_matte.png'),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Soy Artista ',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SvgPicture.asset(
                                        'assets/SVG/Icon feather-chevron-right.svg'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Si eres barbero o tatuador"),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                style: butttonStyle,
                onPressed: () {
                  Navigator.of(context).push<void>(CreateCustomerPage.route());
                },
                child: Column(
                  children: [
                    const Text('Customer'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
