import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:inker_studio/data/gcp/dto/auto_complete_response.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/utils/forms/clear_input.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class RegisterArtistAddressInput extends StatelessWidget {
  RegisterArtistAddressInput({
    Key? key,
  }) : super(key: key);
  final TextEditingController _typeAheadController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _typeAheadController.text = context
        .read<RegisterArtistBloc>()
        .state
        .form
        .location
        .value
        .description;
    return Expanded(
        child: Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
          vertical: MediaQuery.of(context).size.height * 0.01),
      //   child: TypeAheadField(
      //     textFieldConfiguration: TextField(
      //         controller: _typeAheadController,
      //         autofocus: false,
      //         cursorColor: const Color(0xff777E91),
      //         style: const TextStyle(
      //           color: Colors.white,
      //           fontSize: 16,
      //           fontFamily: 'Poppins',
      //         ),
      //         inputFormatters: [
      //           FilteringTextInputFormatter.allow(
      //             RegExp('[A-Za-z0-9 ñÑ]'),
      //           ),
      //         ],
      //         decoration: InputDecoration(
      //           suffixIcon: ClearInput(
      //             onTap: () {
      //               _typeAheadController.clear();
      //               context.read<RegisterArtistBloc>().add(
      //                     const RegisterArtistLocationChanged(
      //                         Location(placeId: '', description: '')),
      //                   );
      //             },
      //           ),
      //           contentPadding: inputContentPadding,
      //           hintText: 'Ej. Vicuña Mackenna 744',
      //           hintStyle: labelTextStyle,
      //           filled: true,
      //           fillColor: inputBackgroundColor,
      //           floatingLabelBehavior: FloatingLabelBehavior.never,
      //           border: OutlineInputBorder(
      //             borderRadius: BorderRadius.circular(15),
      //             borderSide: const BorderSide(
      //                 color: Color(0xff777E91), style: BorderStyle.none),
      //           ),
      //           focusedBorder: OutlineInputBorder(
      //               borderRadius: BorderRadius.circular(15),
      //               borderSide: const BorderSide(
      //                 color: Color(0xff777E91),
      //               )),
      //         )),
      //     minCharsForSuggestions: 4,
      //     keepSuggestionsOnLoading: false,
      //     suggestionsBoxDecoration: suggestionBoxDecoration(context),
      //     debounceDuration: const Duration(seconds: 1),
      //     suggestionsCallback: (pattern) async {
      //       return context
      //           .read<RegisterArtistBloc>()
      //           .placesService
      //           .getAutoComplete(pattern);
      //     },
      //     itemBuilder: _itemBuilder,
      //     noItemsFoundBuilder: _noItemsFoundBuilder,
      //     loadingBuilder: _loadingBuilder,
      //     onSuggestionSelected: (Prediction suggestion) {
      //       _typeAheadController.text = suggestion.description;
      //       context.read<RegisterArtistBloc>().add(
      //             RegisterArtistLocationChanged(Location(
      //                 description: suggestion.description,
      //                 placeId: suggestion.placeId)),
      //           );
      //     },
      //   ),
    ));
  }

  // SuggestionsBoxDecoration suggestionBoxDecoration(BuildContext context) =>
  //     SuggestionsBoxDecoration(
  //       elevation: 0,
  //       color: primaryColor,
  //       clipBehavior: Clip.hardEdge,
  //       borderRadius:
  //           BorderRadius.circular(MediaQuery.of(context).size.width * 0.05),
  //     );

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
