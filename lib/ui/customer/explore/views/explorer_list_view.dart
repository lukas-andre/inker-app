import 'package:flutter/material.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ExplorerListView extends StatelessWidget {
  const ExplorerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(color: primaryColor),
          width: size.width,
          height: 180,
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SizedBox(
                        width: size.width * 0.5,
                        child: Text(
                          'Descubrir',
                          style: TextStyleTheme.copyWith(
                              fontSize: 26,
                              // fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(15.0),
                    //   child: Row(
                    //     children: const [Text('data'), Text('data')],
                    //   ),
                    // ),
                  ],
                ),
                const Text(
                  'TODO: Buscador...',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
