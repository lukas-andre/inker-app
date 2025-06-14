import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:inker_studio/data/gcp/dto/auto_complete_response.dart';
import 'package:inker_studio/features/register/bloc/register/artist/register_artist_bloc.dart';
import 'package:inker_studio/test_utils/register_keys.dart';
import 'package:inker_studio/ui/theme/app_styles.dart';

class RegisterArtistAddressInput extends StatefulWidget {
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

  @override
  State<RegisterArtistAddressInput> createState() => _RegisterArtistAddressInputState();
}

class _RegisterArtistAddressInputState extends State<RegisterArtistAddressInput> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;
  late RegisterArtistBloc _bloc;

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
  void initState() {
    super.initState();
    _bloc = context.read<RegisterArtistBloc>();
    _controller = TextEditingController();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final horizontalPadding = widget.horizontalPadding ?? MediaQuery.of(context).size.width * 0.05;
    final verticalPadding = widget.verticalPadding ?? MediaQuery.of(context).size.height * 0.01;

    return BlocBuilder<RegisterArtistBloc, RegisterArtistState>(
      buildWhen: (previous, current) =>
          previous.form.location.value.description != current.form.location.value.description,
      builder: (context, state) {
        // Solo actualiza el controller si el valor viene de afuera y el campo no tiene el foco
        if (_controller.text != state.form.location.value.description && !_focusNode.hasFocus) {
          _controller.text = state.form.location.value.description;
        }

        return widget.withFlex
            ? Flexible(
                child: _buildContainer(horizontalPadding, verticalPadding, context, state),
              )
            : _buildContainer(horizontalPadding, verticalPadding, context, state);
      },
    );
  }

  Widget _buildContainer(
      double horizontalPadding, double verticalPadding, BuildContext context, RegisterArtistState state) {
    return Container(
      width: widget.withFlex ? null : MediaQuery.of(context).size.width * 0.9,
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      child: _buildAutocomplete(context, state),
    );
  }

  Widget _buildAutocomplete(BuildContext context, RegisterArtistState state) {
    return RawAutocomplete<Prediction>(
      textEditingController: _controller,
      focusNode: _focusNode,
      optionsBuilder: (TextEditingValue textEditingValue) async {
        if (textEditingValue.text.length < 4) {
          return const Iterable<Prediction>.empty();
        }
        try {
          final predictions = await _bloc.placesService.getAutoComplete(textEditingValue.text);
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
          onChanged: (value) {
            // Solo notifica al bloc, no actualices el controller aquí
            _bloc.add(RegisterArtistLocationChanged(Location(placeId: '', description: value)));
          },
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: const Icon(Icons.clear, color: Color(0xff777E91)),
              onPressed: () {
                controller.clear();
                _bloc.add(const RegisterArtistLocationChanged(Location(placeId: '', description: '')));
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
            errorText: widget.valid == false ? widget.errorMessage : null,
            errorMaxLines: 3,
            errorStyle: const TextStyle(fontFamily: 'Poppins'),
            errorBorder: widget.valid == false
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
                color: widget.valid == false ? Colors.red : const Color(0xff777E91),
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
                  _bloc.add(
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