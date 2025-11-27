import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class CachedImageManager {
  // Singleton instance
  static final CachedImageManager _instance = CachedImageManager._internal();
  factory CachedImageManager() => _instance;
  CachedImageManager._internal();

  // Custom cache manager with extended duration and larger capacity
  static final customCacheManager = CacheManager(
    Config(
      'inkerImagesCache',
      stalePeriod: const Duration(days: 7),
      maxNrOfCacheObjects: 500,
      repo: JsonCacheInfoRepository(databaseName: 'inkerImagesCache'),
      fileService: HttpFileService(),
    ),
  );

  // Flag para verificar si ya se han precargado las imágenes críticas
  bool _criticalImagesPreloaded = false;

  // Preload a list of images into cache (useful for galleries)
  Future<void> preloadImages(
      List<String> imageUrls, BuildContext context) async {
    for (final url in imageUrls) {
      if (url.isNotEmpty) {
        await precacheImage(
          CachedNetworkImageProvider(
            url,
            cacheManager: customCacheManager,
          ),
          context,
        );
      }
    }
  }

  // Precargar imágenes críticas de la aplicación
  Future<void> preloadCriticalImages(
    BuildContext context, {
    String? profileImageUrl,
    List<String>? additionalUrls,
  }) async {
    // Evitar precargar múltiples veces las mismas imágenes
    if (_criticalImagesPreloaded) return;

    final imagesToPreload = <String>[];

    // Añadir imagen de perfil si está disponible
    if (profileImageUrl != null && profileImageUrl.isNotEmpty) {
      imagesToPreload.add(profileImageUrl);
    }

    // Añadir cualquier URL adicional
    if (additionalUrls != null && additionalUrls.isNotEmpty) {
      imagesToPreload.addAll(additionalUrls.where((url) => url.isNotEmpty));
    }

    // Precargar todas las imágenes en segundo plano
    if (imagesToPreload.isNotEmpty) {
      // Para evitar bloquear la UI, ejecutamos en un microtask
      Future.microtask(() async {
        await preloadImages(imagesToPreload, context);
        _criticalImagesPreloaded = true;
      });
    }
  }

  // Clear the image cache
  Future<void> clearCache() async {
    await customCacheManager.emptyCache();
    _criticalImagesPreloaded = false;
  }

  // Comprueba si una URL de imagen existe en la caché
  Future<bool> isImageCached(String imageUrl) async {
    final fileInfo = await customCacheManager.getFileFromCache(imageUrl);
    return fileInfo != null;
  }

  // Build a cached image with advanced options for gallery items
  Widget buildCachedImage({
    required BuildContext context,
    required String imageUrl,
    double? width,
    double? height,
    BoxFit fit = BoxFit.cover,
    BorderRadius? borderRadius,
    Widget? placeholder,
    Widget? errorWidget,
    int? memCacheWidth,
    int? memCacheHeight,
    bool isBackground = false,
  }) {
    // Default placeholder
    final defaultPlaceholder = Container(
      color: HSLColor.fromColor(Theme.of(context).colorScheme.primary)
          .withLightness(0.15)
          .toColor(),
      child: Center(
        child: SizedBox(
          width: 30,
          height: 30,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            valueColor: AlwaysStoppedAnimation<Color>(
                Theme.of(context).colorScheme.secondary),
          ),
        ),
      ),
    );

    // Default error widget
    final defaultErrorWidget = Container(
      color: HSLColor.fromColor(Theme.of(context).colorScheme.primary)
          .withLightness(0.15)
          .toColor(),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.image_not_supported,
              color: Colors.grey.shade400,
              size: 40,
            ),
            const SizedBox(height: 8),
            Text(
              'Image not available',
              style: TextStyleTheme.caption.copyWith(
                color: Colors.grey.shade400,
              ),
            ),
          ],
        ),
      ),
    );

    // Si no se proporcionan dimensiones de caché explícitas,
    // usamos valores más altos para mejor calidad
    final int finalMemCacheWidth =
        memCacheWidth ?? (width != null ? (width * 2.5).toInt() : 1200);
    final int finalMemCacheHeight =
        memCacheHeight ?? (height != null ? (height * 2.5).toInt() : 1200);

    Widget image = CachedNetworkImage(
      imageUrl: imageUrl,
      cacheManager: customCacheManager,
      width: width,
      height: height,
      fit: fit,
      memCacheWidth: finalMemCacheWidth,
      memCacheHeight: finalMemCacheHeight,
      fadeOutDuration: const Duration(milliseconds: 300),
      fadeInDuration: const Duration(milliseconds: 300),
      placeholder: (context, url) => placeholder ?? defaultPlaceholder,
      errorWidget: (context, url, error) => errorWidget ?? defaultErrorWidget,
    );

    // Apply border radius if provided
    if (borderRadius != null) {
      image = ClipRRect(
        borderRadius: borderRadius,
        child: image,
      );
    }

    // If it's a background image, wrap with grayscale filter when being loaded
    if (isBackground) {
      return Stack(
        fit: StackFit.passthrough,
        children: [
          image,
        ],
      );
    }

    return image;
  }

  // Optimized image for thumbnails with reduced memory cache size
  Widget buildThumbnail({
    required BuildContext context,
    required String imageUrl,
    required double width,
    required double height,
    BorderRadius? borderRadius,
  }) {
    return buildCachedImage(
      context: context,
      imageUrl: imageUrl,
      width: width,
      height: height,
      borderRadius: borderRadius,
      // Mayor calidad para miniaturas
      memCacheWidth: (width * 2).toInt(),
      memCacheHeight: (height * 2).toInt(),
    );
  }

  // Hero transition compatible cached image
  Widget buildHeroCachedImage({
    required BuildContext context,
    required String imageUrl,
    required String heroTag,
    double? width,
    double? height,
    BoxFit fit = BoxFit.cover,
    BorderRadius? borderRadius,
  }) {
    return Hero(
      tag: heroTag,
      child: buildCachedImage(
        context: context,
        imageUrl: imageUrl,
        width: width,
        height: height,
        fit: fit,
        borderRadius: borderRadius,
        // Mayor calidad para imágenes con transición Hero
        memCacheWidth: width != null ? (width * 2.5).toInt() : 1200,
        memCacheHeight: height != null ? (height * 2.5).toInt() : 1200,
      ),
    );
  }

  // Imagen de perfil optimizada con efecto circular
  Widget buildProfileImage({
    required String imageUrl,
    double size = 80,
    String? heroTag,
    Widget? placeholder,
  }) {
    // Implementación completamente nueva para mostrar imágenes perfectas

    // Paso 1: Crear un contenedor circular para la imagen
    final circularContainer = Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.grey.withOpacity(0.2),
          width: 0.5,
        ),
      ),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: size / 2,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          cacheManager: customCacheManager,
          // No establecemos width/height aquí porque CircleAvatar ya maneja las dimensiones
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit
                    .cover, // Este cover solo se aplica dentro del círculo
              ),
            ),
          ),
          placeholder: (context, url) =>
              placeholder ??
              Center(
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Theme.of(context).colorScheme.secondary),
                  ),
                ),
              ),
          errorWidget: (context, url, error) => const Icon(
            Icons.person_outline,
            color: Colors.grey,
          ),
          // Usar valores altos para calidad de imagen
          memCacheWidth: (size * 3).toInt(),
          memCacheHeight: (size * 3).toInt(),
        ),
      ),
    );

    return heroTag != null
        ? Hero(tag: heroTag, child: circularContainer)
        : circularContainer;
  }
}
