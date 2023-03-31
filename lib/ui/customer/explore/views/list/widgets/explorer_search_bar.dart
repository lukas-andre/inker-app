import 'package:flutter/material.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ExplorerSearchBar extends StatelessWidget {
  const ExplorerSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 40,
          width: size.width * 0.9,
          child: TextField(
            keyboardType: TextInputType.text,
            onTap: () {},
            key: const Key('explorer_list_view_search_field'),
            style: TextStyleTheme.copyWith(
              fontSize: 16,
              color: const Color(0xff777E91),
            ),
            cursorColor: const Color(0xff777E91),
            onChanged: (text) {},
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(9),
              errorMaxLines: 1,
              errorStyle: TextStyleTheme.copyWith(
                fontSize: 16,
                color: Colors.red,
              ),
              label: Padding(
                padding: const EdgeInsets.only(top: 3.5),
                child: Text('Buscar',
                    maxLines: 1,
                    textAlign: TextAlign.left,
                    style: TextStyleTheme.copyWith(
                      fontSize: 16,
                      color: const Color(0xff777E91),
                    )),
              ),
              filled: true,
              fillColor: inputBackgroundColor,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              prefixIcon: const Icon(Icons.search, color: Colors.white),
              suffixIcon: SizedBox(
                width: 100,
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  const Icon(Icons.filter_list_outlined, color: Colors.white),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    child: Text(
                      'Filtrar',
                      style: TextStyleTheme.copyWith(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                ]),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none),
            ),
          ),
        ),
      ],
    );
  }
}
