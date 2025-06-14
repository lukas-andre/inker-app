import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/data/api/location/dtos/artist_location_dto.dart';
import 'package:inker_studio/features/auth/bloc/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/test_utils/register_keys.dart';

class RegisterArtistAddressTypeInput extends StatelessWidget {
  const RegisterArtistAddressTypeInput({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
        builder: (context, state) => Expanded(
            child: Container(
          key: registerKeys.artistRegistration.addressTypeInput,
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
                  if (state.addressTypeOption[index].type == AddressType.HOME) {
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
                  key: Key(
                      '${registerKeys.artistRegistration.addressTypeInput}-${state.addressTypeOption[index].type.name}'),
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
  const InkerChip({super.key, required this.text, required this.active});
  final String text;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: ShapeDecoration(
            shape: const StadiumBorder(),
            color: active
                ? Theme.of(context).colorScheme.error
                : Theme.of(context).colorScheme.surface),
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
