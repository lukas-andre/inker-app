import 'package:flutter/material.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class ExplorerSearchBar extends StatelessWidget {
  final VoidCallback? onTap;

  const ExplorerSearchBar({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: explorerSecondaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(50),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                // Icono de búsqueda con diseño mejorado
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: secondaryColor.withOpacity(0.1),
                  ),
                  child: const Icon(
                    Icons.search_rounded,
                    color: secondaryColor,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 12),
                // Texto de búsqueda
                Expanded(
                  child: Text(
                    'Buscar artistas, estilos o ubicaciones...',
                    style: TextStyleTheme.copyWith(
                      fontSize: 14,
                      color: Colors.white70,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                // Icono de filtros
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: secondaryColor.withOpacity(0.1),
                  ),
                  child: const Icon(
                    Icons.tune,
                    color: secondaryColor,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}