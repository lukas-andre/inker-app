import 'package:flutter/material.dart';
import 'package:inker_studio/data/api/artist/dtos/tag_dto.dart';
import 'package:inker_studio/domain/blocs/customer/inspiration_search/inspiration_search_bloc.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class InspirationFilterSidebarWeb extends StatelessWidget {
  final ContentType contentType;
  final SortType sortType;
  final List<TagSuggestionResponseDto> popularTags;
  final List<TagSuggestionResponseDto> selectedTags;
  final Function(ContentType) onContentTypeChanged;
  final Function(SortType) onSortTypeChanged;
  final Function(TagSuggestionResponseDto) onTagSelected;
  final Function(TagSuggestionResponseDto) onTagRemoved;

  const InspirationFilterSidebarWeb({
    super.key,
    required this.contentType,
    required this.sortType,
    required this.popularTags,
    required this.selectedTags,
    required this.onContentTypeChanged,
    required this.onSortTypeChanged,
    required this.onTagSelected,
    required this.onTagRemoved,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border(
          right: BorderSide(
            color: Theme.of(context).dividerColor,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Filtros',
              style: TextStyleTheme.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ),

          // Content
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                // Content Type Filter
                _buildFilterSection(
                  context,
                  title: 'Tipo de contenido',
                  child: Column(
                    children: [
                      _buildContentTypeOption(context, ContentType.both, 'Todos'),
                      _buildContentTypeOption(context, ContentType.works, 'Trabajos'),
                      _buildContentTypeOption(context, ContentType.stencils, 'Stencils'),
                    ],
                  ),
                ),


                // Selected Tags
                if (selectedTags.isNotEmpty)
                  _buildFilterSection(
                    context,
                    title: 'Tags seleccionados',
                    child: Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: selectedTags
                          .map((tag) => _buildSelectedTagChip(context, tag))
                          .toList(),
                    ),
                  ),

                if (selectedTags.isNotEmpty) const SizedBox(height: 24),

                // Popular Tags
                if (popularTags.isNotEmpty)
                  _buildFilterSection(
                    context,
                    title: 'Tags populares',
                    child: Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: popularTags
                          .where((tag) => !selectedTags.any((selected) => selected.id == tag.id))
                          .take(20)
                          .map((tag) => _buildPopularTagChip(context, tag))
                          .toList(),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterSection(BuildContext context, {required String title, required Widget child}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyleTheme.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        const SizedBox(height: 12),
        child,
      ],
    );
  }

  Widget _buildContentTypeOption(BuildContext context, ContentType type, String label) {
    final isSelected = contentType == type;
    return GestureDetector(
      onTap: () => onContentTypeChanged(type),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        margin: const EdgeInsets.only(bottom: 4),
        decoration: BoxDecoration(
          color: isSelected
              ? Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: isSelected
              ? Border.all(color: Theme.of(context).colorScheme.secondary)
              : null,
        ),
        child: Row(
          children: [
            Icon(
              isSelected ? Icons.radio_button_checked : Icons.radio_button_unchecked,
              size: 20,
              color: isSelected
                  ? Theme.of(context).colorScheme.secondary
                  : Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
            ),
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyleTheme.copyWith(
                fontSize: 14,
                color: isSelected
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSortOption(BuildContext context, SortType type, String label) {
    final isSelected = sortType == type;
    return GestureDetector(
      onTap: () => onSortTypeChanged(type),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        margin: const EdgeInsets.only(bottom: 4),
        decoration: BoxDecoration(
          color: isSelected
              ? Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: isSelected
              ? Border.all(color: Theme.of(context).colorScheme.secondary)
              : null,
        ),
        child: Row(
          children: [
            Icon(
              isSelected ? Icons.radio_button_checked : Icons.radio_button_unchecked,
              size: 20,
              color: isSelected
                  ? Theme.of(context).colorScheme.secondary
                  : Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
            ),
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyleTheme.copyWith(
                fontSize: 14,
                color: isSelected
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSelectedTagChip(BuildContext context, TagSuggestionResponseDto tag) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            tag.name,
            style: TextStyleTheme.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          const SizedBox(width: 4),
          GestureDetector(
            onTap: () => onTagRemoved(tag),
            child: Icon(
              Icons.close,
              size: 14,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPopularTagChip(BuildContext context, TagSuggestionResponseDto tag) {
    return GestureDetector(
      onTap: () => onTagSelected(tag),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Theme.of(context).dividerColor,
          ),
        ),
        child: Text(
          tag.name,
          style: TextStyleTheme.copyWith(
            fontSize: 12,
            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.8),
          ),
        ),
      ),
    );
  }
}