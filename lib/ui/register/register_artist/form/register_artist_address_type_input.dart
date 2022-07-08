import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/utils/forms/styles.dart';

class RegisterArtistAddressTypeInput extends StatelessWidget {
  const RegisterArtistAddressTypeInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
        builder: (context, state) => Expanded(
            child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.045),
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width * 0.8,
          child: ListView.builder(
            itemCount: state.addressTypeOption.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>
                BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
              buildWhen: (previous, current) =>
                  previous.addressTypeOption != current.addressTypeOption,
              builder: (context, state) => GestureDetector(
                onTap: () {
                  if (state.addressTypeOption[index].type ==
                      AddressType.house) {
                    context.read<RegisterArtistBloc>().add(
                          RegisterArtistAddressExtraChanged(
                              '', state.addressTypeOption[index].type),
                        );
                  }
                  context.read<RegisterArtistBloc>().add(
                        RegisterArtistAddressTypeChanged(index),
                      );
                },
                child: InkerChip(
                  text: state.addressTypeOption[index].type.displayName ?? '',
                  active: state.addressTypeOption[index].isSelected,
                ),
              ),
            ),
          ),
        )),
      );
}

class InkerChip extends StatelessWidget {
  const InkerChip({Key? key, required this.text, required this.active})
      : super(key: key);
  final String text;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: ShapeDecoration(
            shape: const StadiumBorder(),
            color: active ? const Color(0xffFF076A) : inputBackgroundColor),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Center(
              child: Text(
            text,
            style: const TextStyle(
                fontSize: 16, color: Colors.white, fontFamily: 'Poppins'),
          )),
        ),
      ),
    );
  }
}
