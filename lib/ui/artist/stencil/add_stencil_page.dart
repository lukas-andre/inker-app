import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/domain/blocs/artist_stencil/artist_stencil_bloc.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:inker_studio/utils/snackbar/custom_snackbar.dart';

class AddStencilPage extends StatefulWidget {
  const AddStencilPage({super.key});

  @override
  State<AddStencilPage> createState() => _AddStencilPageState();
}

class _AddStencilPageState extends State<AddStencilPage> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  XFile? _selectedImage;
  bool _isFeatured = false;
  bool _isHidden = false;
  StencilSource _selectedSource = StencilSource.app;
  List<int> _selectedTags = [];
  bool _isLoading = false;

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _selectedImage = image;
      });
    }
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      if (_selectedImage == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          customSnackBar(
            content: S.of(context).pleaseSelectAnImage,
            backgroundColor: Colors.red,
          ),
        );
        return;
      }

      setState(() {
        _isLoading = true;
      });

      context.read<ArtistStencilBloc>().add(
            ArtistStencilEvent.createStencil(
              title: _titleController.text,
              description: _descriptionController.text,
              source: _selectedSource,
              isFeatured: _isFeatured,
              isHidden: _isHidden,
              tagIds: _selectedTags.isEmpty ? null : _selectedTags,
              imageFile: _selectedImage,
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text(S.of(context).addStencil, style: TextStyleTheme.headline1),
        backgroundColor: primaryColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: BlocConsumer<ArtistStencilBloc, ArtistStencilState>(
        listener: (context, state) {
          state.maybeWhen(
            stencilCreated: (_) {
              ScaffoldMessenger.of(context).showSnackBar(
                customSnackBar(
                  content: S.of(context).stencilCreatedSuccessfully,
                  backgroundColor: Colors.green,
                ),
              );
              Navigator.pop(context);
            },
            error: (message) {
              setState(() {
                _isLoading = false;
              });
              ScaffoldMessenger.of(context).showSnackBar(
                customSnackBar(
                  content: message,
                  backgroundColor: Colors.red,
                ),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          if (_isLoading) {
            return const Center(child: InkerProgressIndicator());
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildImagePicker(),
                  const SizedBox(height: 24),
                  _buildTitleField(),
                  const SizedBox(height: 16),
                  _buildDescriptionField(),
                  const SizedBox(height: 24),
                  _buildSourceSelector(),
                  const SizedBox(height: 16),
                  _buildFeaturedSwitch(),
                  _buildHiddenSwitch(),
                  const SizedBox(height: 24),
                  _buildSubmitButton(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildImagePicker() {
    return Center(
      child: GestureDetector(
        onTap: _pickImage,
        child: Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color:
                HSLColor.fromColor(primaryColor).withLightness(0.2).toColor(),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: secondaryColor.withOpacity(0.5)),
          ),
          child: _selectedImage != null
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.file(
                    File(_selectedImage!.path),
                    fit: BoxFit.cover,
                  ),
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add_photo_alternate,
                      size: 64,
                      color: secondaryColor.withOpacity(0.7),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      S.of(context).tapToSelectImage,
                      style: TextStyleTheme.subtitle1.copyWith(
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  Widget _buildTitleField() {
    return TextFormField(
      controller: _titleController,
      style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
      decoration: InputDecoration(
        labelText: S.of(context).title,
        labelStyle:
            TextStyleTheme.bodyText1.copyWith(color: Colors.grey.shade400),
        filled: true,
        fillColor:
            HSLColor.fromColor(primaryColor).withLightness(0.15).toColor(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey.shade800),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey.shade800),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: secondaryColor),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return S.of(context).pleaseEnterATitle;
        }
        return null;
      },
    );
  }

  Widget _buildDescriptionField() {
    return TextFormField(
      controller: _descriptionController,
      style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
      maxLines: 4,
      decoration: InputDecoration(
        labelText: S.of(context).description,
        labelStyle:
            TextStyleTheme.bodyText1.copyWith(color: Colors.grey.shade400),
        filled: true,
        fillColor:
            HSLColor.fromColor(primaryColor).withLightness(0.15).toColor(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey.shade800),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey.shade800),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: secondaryColor),
        ),
      ),
    );
  }

  Widget _buildSourceSelector() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).source,
          style: TextStyleTheme.subtitle1.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color:
                HSLColor.fromColor(primaryColor).withLightness(0.15).toColor(),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey.shade800),
          ),
          child: Row(
            children: [
              Expanded(
                child: RadioListTile<StencilSource>(
                  title: Text(
                    'App',
                    style: TextStyleTheme.bodyText1.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  value: StencilSource.app,
                  groupValue: _selectedSource,
                  onChanged: (StencilSource? value) {
                    setState(() {
                      _selectedSource = value!;
                    });
                  },
                  activeColor: secondaryColor,
                ),
              ),
              Expanded(
                child: RadioListTile<StencilSource>(
                  title: Text(
                    'External',
                    style: TextStyleTheme.bodyText1.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  value: StencilSource.external,
                  groupValue: _selectedSource,
                  onChanged: (StencilSource? value) {
                    setState(() {
                      _selectedSource = value!;
                    });
                  },
                  activeColor: secondaryColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFeaturedSwitch() {
    return SwitchListTile(
      title: Text(
        S.of(context).featuredStencil,
        style: TextStyleTheme.bodyText1.copyWith(
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        S.of(context).stencilWillBeHighlightedInProfile,
        style: TextStyleTheme.caption.copyWith(
          color: Colors.grey.shade400,
        ),
      ),
      value: _isFeatured,
      onChanged: (bool value) {
        setState(() {
          _isFeatured = value;
        });
      },
      activeColor: secondaryColor,
      contentPadding: EdgeInsets.zero,
    );
  }

  Widget _buildHiddenSwitch() {
    return SwitchListTile(
      title: Text(
        S.of(context).hideStencil,
        style: TextStyleTheme.bodyText1.copyWith(
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        S.of(context).stencilWillBeHiddenFromPublicView,
        style: TextStyleTheme.caption.copyWith(
          color: Colors.grey.shade400,
        ),
      ),
      value: _isHidden,
      onChanged: (bool value) {
        setState(() {
          _isHidden = value;
        });
      },
      activeColor: secondaryColor,
      contentPadding: EdgeInsets.zero,
    );
  }

  Widget _buildSubmitButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: _submitForm,
        style: ElevatedButton.styleFrom(
          backgroundColor: secondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          S.of(context).saveStencil,
          style: TextStyleTheme.button.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
