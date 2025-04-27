import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/data/api/tattoo_generator/dtos/tattoo_styles.dart';
import 'package:inker_studio/domain/blocs/tattoo_generator/tattoo_generator_bloc.dart';
import 'package:inker_studio/domain/services/tattoo_generator/tatto_generator_service.dart';
import 'package:inker_studio/ui/shared/widgets/buttons.dart';
import 'package:inker_studio/ui/shared/widgets/loading_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class TattooGeneratorPage extends StatefulWidget {
  const TattooGeneratorPage({Key? key}) : super(key: key);

  @override
  State<TattooGeneratorPage> createState() => _TattooGeneratorPageState();
}

class _TattooGeneratorPageState extends State<TattooGeneratorPage> {
  final TextEditingController _promptController = TextEditingController();
  late TattooStyle _selectedStyle = TattooStyle.blackwork;

  @override
  void initState() {
    super.initState();
    context.read<TattooGeneratorBloc>().add(const TattooGeneratorEvent.started());
  }

  @override
  void dispose() {
    _promptController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text('Tattoo Generator', style: TextStyleTheme.headline1),
        backgroundColor: primaryColor,
        elevation: 0,
      ),
      body: BlocConsumer<TattooGeneratorBloc, TattooGeneratorState>(
        listener: (context, state) {
          state.maybeWhen(
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message)),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildPromptInput(),
                const SizedBox(height: 20),
                _buildStyleSelector(),
                const SizedBox(height: 20),
                _buildGenerateButton(),
                const SizedBox(height: 20),
                Expanded(
                  child: state.maybeWhen(
                    loading: () => const Center(child: LoadingIndicator()),
                    loaded: (images, prompt, style) => _buildResultsView(images),
                    orElse: () => _buildEmptyState(),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildPromptInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Describe your tattoo',
          style: TextStyleTheme.headline3,
        ),
        const SizedBox(height: 8),
        TextField(
          controller: _promptController,
          maxLines: 3,
          style: TextStyleTheme.bodyText1,
          decoration: InputDecoration(
            fillColor: inputBackgroundColor,
            filled: true,
            hintText: 'E.g. A minimalist wolf silhouette with geometric patterns',
            hintStyle: hintTextStyle,
            border: inputBorder,
            focusedBorder: focusedBorder,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          ),
          onChanged: (value) {
            context.read<TattooGeneratorBloc>().add(
                  TattooGeneratorEvent.updatePrompt(value),
                );
          },
        ),
      ],
    );
  }

  Widget _buildStyleSelector() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Choose a style',
          style: TextStyleTheme.headline3,
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 110,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: TattooStyle.values.map((style) {
              final isSelected = style == _selectedStyle;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedStyle = style;
                  });
                  context.read<TattooGeneratorBloc>().add(
                        TattooGeneratorEvent.updateStyle(style),
                      );
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 12),
                  padding: const EdgeInsets.all(12),
                  width: 100,
                  decoration: BoxDecoration(
                    color: isSelected ? secondaryColor : explorerSecondaryColor,
                    borderRadius: BorderRadius.circular(8),
                    border: isSelected
                        ? Border.all(color: Colors.white, width: 2)
                        : null,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.brush, color: Colors.white),
                      const SizedBox(height: 8),
                      Text(
                        _formatStyleName(style.name),
                        textAlign: TextAlign.center,
                        style: TextStyleTheme.subtitle1,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildGenerateButton() {
    return SizedBox(
      width: double.infinity,
      child: PrimaryButton(
        text: 'Generate Tattoo',
        onPressed: () {
          if (_promptController.text.trim().isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Please enter a description')),
            );
            return;
          }
          context.read<TattooGeneratorBloc>().add(
                TattooGeneratorEvent.generateTattoo(
                  prompt: _promptController.text,
                  style: _selectedStyle,
                ),
              );
        },
      ),
    );
  }

  Widget _buildResultsView(List<TattooGeneratedImageURL> images) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Results',
          style: TextStyleTheme.headline3,
        ),
        const SizedBox(height: 12),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: images.length,
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  images[index],
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Container(
                      color: explorerSecondaryColor,
                      child: const Center(
                        child: CircularProgressIndicator(
                          color: secondaryColor,
                        ),
                      ),
                    );
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: explorerSecondaryColor,
                      child: const Center(
                        child: Icon(Icons.error, color: redColor),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.create, size: 64, color: tertiaryColor),
          const SizedBox(height: 16),
          Text(
            'Enter a description and choose a style\nto generate tattoo designs',
            textAlign: TextAlign.center,
            style: TextStyleTheme.subtitle1.copyWith(color: tertiaryColor),
          ),
        ],
      ),
    );
  }

  String _formatStyleName(String styleName) {
    // Convert camelCase to Title Case with spaces
    final result = styleName.replaceAllMapped(
      RegExp(r'([a-z])([A-Z])'),
      (match) => '${match.group(1)} ${match.group(2)}',
    );
    
    return result.substring(0, 1).toUpperCase() + result.substring(1);
  }
} 