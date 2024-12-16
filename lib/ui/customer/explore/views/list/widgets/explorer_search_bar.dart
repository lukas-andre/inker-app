import 'package:flutter/material.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ExplorerSearchBar extends StatelessWidget {
  final VoidCallback? onTap;

  const ExplorerSearchBar({
    super.key,
    this.onTap,
  });

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
            onTap: onTap,
            keyboardType: TextInputType.text,
            style: TextStyleTheme.copyWith(
              fontSize: 16,
              color: const Color(0xff777E91),
            ),
            cursorColor: const Color(0xff777E91),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(9),
              label: Padding(
                padding: const EdgeInsets.only(top: 3.5),
                child: Text(
                  'Buscar',
                  maxLines: 1,
                  textAlign: TextAlign.left,
                  style: TextStyleTheme.copyWith(
                    fontSize: 16,
                    color: const Color(0xff777E91),
                  ),
                ),
              ),
              filled: true,
              fillColor: inputBackgroundColor,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              prefixIcon: const Icon(Icons.search, color: Colors.white),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}