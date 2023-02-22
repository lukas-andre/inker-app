import 'package:flutter/material.dart';
import 'package:inker_studio/ui/customer/explore/widgets/explorer_contact_button.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

const bottomBarHeight = 80.0;

class DraggableArtistInfoBottomBar extends StatelessWidget {
  const DraggableArtistInfoBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: bottomBarHeight,
        color: primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkerStadiumButton(
                onTap: () {},
                width: MediaQuery.of(context).size.width * 0.45,
                height: 40,
                text: 'Indicaciones',
                backgroundColor: tertiaryColor,
                textStyle: TextStyleTheme.copyWith(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w200),
              ),
              InkerStadiumButton(
                onTap: () {},
                width: MediaQuery.of(context).size.width * 0.45,
                height: 40,
                text: 'Reservar cita',
                backgroundColor: secondaryColor,
                textStyle: TextStyleTheme.copyWith(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w200),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
