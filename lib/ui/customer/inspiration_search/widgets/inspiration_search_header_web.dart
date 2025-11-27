import 'package:flutter/material.dart';
import 'package:inker_studio/data/api/artist/dtos/tag_dto.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class InspirationSearchHeaderWeb extends StatelessWidget {
  final TextEditingController searchController;
  final List<TagSuggestionResponseDto> selectedTags;
  final List<TagSuggestionResponseDto> searchedTags;
  final Function(TagSuggestionResponseDto) onTagSelected;
  final Function(TagSuggestionResponseDto) onTagRemoved;
  final VoidCallback onSearch;
  final VoidCallback onClearAll;
  final VoidCallback? onClearSearch;

  const InspirationSearchHeaderWeb({
    super.key,
    required this.searchController,
    required this.selectedTags,
    required this.searchedTags,
    required this.onTagSelected,
    required this.onTagRemoved,
    required this.onSearch,
    required this.onClearAll,
    this.onClearSearch,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title and breadcrumbs area
          Row(
            children: [
              Text(
                S.of(context).inspiration,
                style: TextStyleTheme.copyWith(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              const Spacer(),
              if (selectedTags.isNotEmpty)
                TextButton.icon(
                  onPressed: onClearAll,
                  icon: const Icon(Icons.clear_all),
                  label: Text(S.of(context).clearFilters),
                  style: TextButton.styleFrom(
                    foregroundColor: Theme.of(context).colorScheme.error,
                  ),
                ),
            ],
          ),
          const SizedBox(height: 24),
          
          // Search bar
          _buildSearchBar(context),
          
          const SizedBox(height: 16),
          
          // Selected tags
          if (selectedTags.isNotEmpty) ...[
            Text(
'Filtros seleccionados',
              style: TextStyleTheme.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: selectedTags.map((tag) => _buildSelectedTagChip(context, tag)).toList(),
            ),
            const SizedBox(height: 16),
          ],
          
          // Tag suggestions
          if (searchedTags.isNotEmpty) ...[
            Text(
              'Tags sugeridos',
              style: TextStyleTheme.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: searchedTags
                  .where((tag) => !selectedTags.any((selected) => selected.id == tag.id))
                  .map((tag) => _buildSuggestedTagChip(context, tag))
                  .toList(),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 600),
      child: TextField(
        controller: searchController,
        style: TextStyleTheme.copyWith(
          fontSize: 16,
          color: Theme.of(context).colorScheme.onSurface,
        ),
        decoration: InputDecoration(
          hintText: 'Buscar inspiración, estilos, artistas...',
          hintStyle: TextStyleTheme.copyWith(
            fontSize: 16,
            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
          ),
          suffixIcon: searchController.text.isNotEmpty
              ? IconButton(
                  onPressed: onClearSearch ?? () {
                    searchController.clear();
                  },
                  icon: Icon(
                    Icons.clear,
                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                )
              : IconButton(
                  onPressed: onSearch,
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
          filled: true,
          fillColor: Theme.of(context).colorScheme.surface,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Theme.of(context).dividerColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondary,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Theme.of(context).dividerColor,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
        ),
        onSubmitted: (_) => onSearch(),
      ),
    );
  }

  Widget _buildSelectedTagChip(BuildContext context, TagSuggestionResponseDto tag) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
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
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () => onTagRemoved(tag),
            child: Icon(
              Icons.close,
              size: 16,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSuggestedTagChip(BuildContext context, TagSuggestionResponseDto tag) {
    return InkWell(
      onTap: () => onTagSelected(tag),
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Theme.of(context).dividerColor,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.add,
              size: 16,
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
            ),
            const SizedBox(width: 4),
            Text(
              tag.name,
              style: TextStyleTheme.copyWith(
                fontSize: 14,
                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}