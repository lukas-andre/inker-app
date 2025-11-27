import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:inker_studio/utils/image/cached_image_manager.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

/// Widget para mostrar la configuración de caché de imágenes y
/// permitir al usuario limpiarla si es necesario
class ImageCacheSettings extends StatefulWidget {
  const ImageCacheSettings({super.key});

  @override
  State<ImageCacheSettings> createState() => _ImageCacheSettingsState();
}

class _ImageCacheSettingsState extends State<ImageCacheSettings> {
  final CachedImageManager _cacheManager = CachedImageManager();
  bool _isLoading = false;
  String _cacheSize = 'Calculando...';
  String _fileCount = '...';
  bool _isClearing = false;

  @override
  void initState() {
    super.initState();
    _calculateCacheSize();
  }

  Future<void> _calculateCacheSize() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final cacheDir = await getTemporaryDirectory();
      final cacheFilesDir = Directory('${cacheDir.path}/inkerImagesCache');
      
      if (await cacheFilesDir.exists()) {
        int totalSize = 0;
        int fileCount = 0;
        
        await for (var entity in cacheFilesDir.list(recursive: true, followLinks: false)) {
          if (entity is File) {
            fileCount++;
            totalSize += await entity.length();
          }
        }
        
        // Convertir a MB con 2 decimales
        final sizeMB = (totalSize / (1024 * 1024)).toStringAsFixed(2);
        setState(() {
          _cacheSize = '$sizeMB MB';
          _fileCount = '$fileCount';
        });
      } else {
        setState(() {
          _cacheSize = '0 MB';
          _fileCount = '0';
        });
      }
    } catch (e) {
      setState(() {
        _cacheSize = 'Error al calcular';
        _fileCount = '-';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _clearCache() async {
    setState(() {
      _isClearing = true;
    });
    
    try {
      await _cacheManager.clearCache();
      
      // Esperar un momento para asegurar que la limpieza de caché se haya completado
      await Future.delayed(const Duration(milliseconds: 500));
      
      // Recalcular el tamaño
      await _calculateCacheSize();
      
      if (mounted) {
        // Mostrar mensaje de éxito
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Caché de imágenes limpiada',
              style: TextStyleTheme.bodyText2.copyWith(color: Colors.white),
            ),
            backgroundColor: Colors.green,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        // Mostrar mensaje de error
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Error al limpiar la caché',
              style: TextStyleTheme.bodyText2.copyWith(color: Colors.white),
            ),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 2),
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isClearing = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: HSLColor.fromColor(Theme.of(context).colorScheme.primary).withLightness(0.15).toColor(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade800),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.image,
                  color: Theme.of(context).colorScheme.secondary,
                  size: 24,
                ),
                const SizedBox(width: 12),
                Text(
                  'Caché de imágenes',
                  style: TextStyleTheme.subtitle1.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _buildCacheInfoRow('Tamaño actual:', _cacheSize),
            const SizedBox(height: 8),
            _buildCacheInfoRow('Archivos en caché:', _fileCount),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton.icon(
                  onPressed: _isLoading || _isClearing ? null : _clearCache,
                  icon: _isClearing
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        )
                      : const Icon(Icons.cleaning_services, size: 18),
                  label: const Text('Limpiar caché'),
                  style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              'La limpieza de caché puede ayudar a liberar espacio pero requerirá volver a descargar las imágenes durante su próxima visita. Inker almacena en caché las imágenes por hasta 7 días para mejorar el rendimiento.',
              style: TextStyleTheme.caption.copyWith(
                color: Colors.grey.shade400,
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildCacheInfoRow(String label, String value) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyleTheme.bodyText2.copyWith(
            color: Colors.grey.shade300,
          ),
        ),
        const SizedBox(width: 8),
        _isLoading
            ? SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).colorScheme.secondary),
                ),
              )
            : Text(
                value,
                style: TextStyleTheme.bodyText2.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ],
    );
  }
} 