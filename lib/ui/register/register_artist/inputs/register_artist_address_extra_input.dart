import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:inker_studio/data/gcp/dto/auto_complete_response.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/utils/forms/clear_input.dart';
import 'package:inker_studio/utils/forms/custom_input.dart';
import 'package:inker_studio/utils/forms/styles.dart';
import 'package:inker_studio/utils/forms/trim_text_formatter.dart';

class RegisterArtistAddressExtraInput extends StatelessWidget {
  RegisterArtistAddressExtraInput({
    Key? key,
  }) : super(key: key);
  final _texEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _texEditingController.text =
        context.read<RegisterArtistBloc>().state.form.addressExtra.value;
    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      buildWhen: (previous, current) =>
          previous.form.addressExtra.value != current.form.addressExtra.value,
      builder: (context, state) {
        return CustomInput(
            inputFormatters: [TrimTextFormatter()],
            controller: _texEditingController,
            suffixIcon: state.form.email.value.isNotEmpty
                ? ClearInput(
                    onTap: () {
                      _texEditingController.clear();
                      context.read<RegisterArtistBloc>().add(
                            RegisterArtistAddressExtraChanged(
                                '', state.addressType),
                          );
                    },
                  )
                : null,
            valid:
                state.form.addressExtra.valid || state.form.addressExtra.pure,
            errorMessage: state.form.addressExtra.valid
                ? null
                : state.form.addressExtra.error?.message,
            onChanged: (value) {
              context.read<RegisterArtistBloc>().add(
                    RegisterArtistAddressExtraChanged(
                        value, AddressType.apartment),
                  );
            },
            label: 'Ej: Depto 101, Torre B');
      },
    );
  }

  SuggestionsBoxDecoration suggestionBoxDecoration(BuildContext context) =>
      SuggestionsBoxDecoration(
        elevation: 0,
        color: primaryColor,
        clipBehavior: Clip.hardEdge,
        borderRadius:
            BorderRadius.circular(MediaQuery.of(context).size.width * 0.05),
      );

  Widget _itemBuilder(context, Prediction suggestion) => ListTile(
        title: Text(suggestion.description,
            style: const TextStyle(
                color: Colors.white, fontFamily: 'Poppins', fontSize: 16)),
      );

  Widget _noItemsFoundBuilder(context) => Container(
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.01,
            left: MediaQuery.of(context).size.height * 0.01),
        child: const Text('No se encontraron resultados 😥',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontFamily: 'Poppins')),
      );

  Widget _loadingBuilder(context) => Container(
        padding: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(15),
        ),
        height: MediaQuery.of(context).size.height * 0.1,
        child: Center(
          child: Platform.isIOS
              ? const CupertinoActivityIndicator(
                  color: CupertinoColors.white,
                )
              : const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xff7450ff)),
                ),
        ),
      );
}
