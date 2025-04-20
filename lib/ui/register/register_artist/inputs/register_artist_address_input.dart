import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:inker_studio/data/gcp/dto/auto_complete_response.dart';
import 'package:inker_studio/domain/blocs/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/test_utils/register_keys.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class RegisterArtistAddressInput extends StatelessWidget {
  const RegisterArtistAddressInput({
    super.key,
    this.valid,
    this.errorMessage,
    this.withFlex = true,
    this.verticalPadding,
    this.horizontalPadding,
  });

  final bool? valid;
  final String? errorMessage;
  final bool withFlex;
  final double? verticalPadding;
  final double? horizontalPadding;

  final Prediction _noResultsPrediction = const Prediction(
    description: '__NO_RESULTS__',
    matchedSubstrings: [],
    placeId: '',
    reference: '',
    structuredFormatting: StructuredFormatting(
      mainText: '',
      mainTextMatchedSubstrings: [],
      secondaryText: '',
    ),
    terms: [],
    types: [],
  );

  @override
  Widget build(BuildContext context) {
    final horizontalPadding = 
        this.horizontalPadding ?? MediaQuery.of(context).size.width * 0.05;
    final verticalPadding = 
        this.verticalPadding ?? MediaQuery.of(context).size.height * 0.01;

    return withFlex
        ? Flexible(
            child: _buildContainer(horizontalPadding, verticalPadding, context),
          )
        : _buildContainer(horizontalPadding, verticalPadding, context);
  }

  Widget _buildContainer(
      double horizontalPadding, double verticalPadding, BuildContext context) {
    return Container(
      width: withFlex ? null : MediaQuery.of(context).size.width * 0.9,
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      child: _buildAutocomplete(context),
    );
  }

  Widget _buildAutocomplete(BuildContext context) {
    final state = context.read<RegisterArtistBloc>().state;
    final TextEditingController controller = TextEditingController(
      text: state.form.location.value.description,
    );

    return RawAutocomplete<Prediction>(
      textEditingController: controller,
      focusNode: FocusNode(),
      optionsBuilder: (TextEditingValue textEditingValue) async {
        if (textEditingValue.text.length < 4) {
          return const Iterable<Prediction>.empty();
        }
        
        try {
          final predictions = await context
              .read<RegisterArtistBloc>()
              .placesService
              .getAutoComplete(textEditingValue.text);
          
          return predictions.isEmpty ? [_noResultsPrediction] : predictions;
        } catch (e) {
          return [_noResultsPrediction];
        }
      },
      displayStringForOption: (Prediction option) => option.description,
      fieldViewBuilder: (context, controller, focusNode, onFieldSubmitted) {
        return TextField(
          key: registerKeys.artistRegistration.addressInput,
          controller: controller,
          focusNode: focusNode,
          cursorColor: const Color(0xff777E91),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Poppins',
          ),
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: const Icon(Icons.clear, color: Color(0xff777E91)),
              onPressed: () {
                controller.clear();
                context.read<RegisterArtistBloc>().add(
                      const RegisterArtistLocationChanged(
                        Location(placeId: '', description: ''),
                      ),
                    );
              },
            ),
            contentPadding: inputContentPadding,
            label: Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.003,
              ),
              child: Text(
                'Dirección',
                style: labelTextStyle,
                textAlign: TextAlign.left,
              ),
            ),
            hintText: 'Ej. Vicuña Mackenna 744',
            hintStyle: labelTextStyle,
            errorText: valid == false ? errorMessage : null,
            errorMaxLines: 3,
            errorStyle: const TextStyle(fontFamily: 'Poppins'),
            errorBorder: valid == false
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.red),
                  )
                : null,
            filled: true,
            fillColor: inputBackgroundColor,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: valid == false ? Colors.red : const Color(0xff777E91),
              ),
            ),
          ),
        );
      },
      optionsViewBuilder: (context, onSelected, options) {
        if (options.length == 1 && options.first.description == '__NO_RESULTS__') {
          return _buildOptionsContainer(
            context,
            _noItemsFoundBuilder(context),
          );
        }

        return _buildOptionsContainer(
          context,
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: options.length,
            itemBuilder: (context, index) {
              final option = options.elementAt(index);
              
              if (option.description == '__NO_RESULTS__') {
                return const SizedBox.shrink();
              }
              
              return InkWell(
                onTap: () {
                  onSelected(option);
                  context.read<RegisterArtistBloc>().add(
                        RegisterArtistLocationChanged(
                          Location(
                            description: option.description,
                            placeId: option.placeId,
                          ),
                        ),
                      );
                },
                child: _itemBuilder(context, option),
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildOptionsContainer(BuildContext context, Widget child) {
    return Align(
      alignment: Alignment.topLeft,
      child: Material(
        color: Colors.transparent,
        child: Container(
          key: registerKeys.artistRegistration.addressSuggestionsList,
          margin: const EdgeInsets.only(top: 4),
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            color: inputBackgroundColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: child,
        ),
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, Prediction suggestion) => ListTile(
        key: registerKeys.artistRegistration.addressSuggestionItem,
        title: Text(
          suggestion.description,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 16,
          ),
        ),
      );

  Widget _noItemsFoundBuilder(BuildContext context) => Container(
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.01,
          left: MediaQuery.of(context).size.height * 0.01,
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text(
            'No se encontraron resultados 😥',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      );
}