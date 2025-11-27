import 'package:flutter/material.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/quotation/widgets/quotation_card_view_model.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';

class ResponsiveCustomerQuotationCard extends StatelessWidget {
  final CustomerOpenQuotationCardViewModel model;
  final void Function(String quotationId)? onTap;
  final void Function(String quotationId)? onViewOffersTap;

  const ResponsiveCustomerQuotationCard({
    super.key,
    required this.model,
    this.onTap,
    this.onViewOffersTap,
  });

  @override
  Widget build(BuildContext context) {
    final deviceType = Responsive.getDeviceType(context);
    
    // Para tablets y desktop, usar diseño horizontal
    if (deviceType == DeviceType.tablet || 
        deviceType == DeviceType.desktop || 
        deviceType == DeviceType.desktopLarge) {
      return _buildWebLayout(context);
    }
    
    // Para móvil, usar diseño vertical mejorado
    return _buildMobileLayout(context);
  }

  Widget _buildWebLayout(BuildContext context) {
    final hasOffers = model.offersCount > 0;
    final borderColor = hasOffers
        ? const Color(0xFF4CAF50)
        : const Color(0xFF52596E);

    return Card(
      color: const Color(0xFF1E2139),
      margin: const EdgeInsets.only(bottom: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: borderColor,
          width: hasOffers ? 2.0 : 1.0,
        ),
      ),
      elevation: hasOffers ? 4 : 1,
      shadowColor: hasOffers ? borderColor.withAlpha(77) : null,
      child: InkWell(
        onTap: () => onTap?.call(model.id),
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: Responsive.padding(context, horizontal: 24, vertical: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Imagen del diseño si existe
              if (model.tattooDesignImageUrl != null)
                _buildWebImage(context)
              else
                _buildPlaceholderImage(context),
              
              SizedBox(width: Responsive.value(context, mobile: 16, tablet: 24)),
              
              // Contenido principal
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header con estado y badges
                    _buildWebHeader(context, hasOffers),
                    const SizedBox(height: 12),
                    
                    // Descripción
                    Text(
                      model.description,
                      style: TextStyleTheme.bodyText1.copyWith(
                        color: Colors.white.withAlpha(222),
                        fontSize: Responsive.fontSize(context, 16),
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 16),
                    
                    // Footer con fecha y acciones
                    _buildWebFooter(context, hasOffers),
                  ],
                ),
              ),
              
              // Panel de ofertas (solo desktop)
              if (Responsive.isDesktop(context) || Responsive.isDesktopLarge(context))
                _buildOffersPanel(context, hasOffers),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    final l10n = S.of(context);
    final hasOffers = model.offersCount > 0;
    final borderColor = hasOffers
        ? const Color(0xFF4CAF50)
        : const Color(0xFF52596E);

    return Card(
      color: const Color(0xFF1E2139),
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: borderColor,
          width: hasOffers ? 2.0 : 1.0,
        ),
      ),
      elevation: hasOffers ? 3 : 1,
      shadowColor: hasOffers ? borderColor.withAlpha(51) : null,
      child: InkWell(
        onTap: () => onTap?.call(model.id),
        borderRadius: BorderRadius.circular(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagen del diseño con overlay de estado
            if (model.tattooDesignImageUrl != null)
              _buildMobileImageWithOverlay(context, hasOffers)
            else if (hasOffers)
              _buildOffersBanner(context),
            
            // Contenido
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Estado y contador de ofertas
                  _buildMobileHeader(context, hasOffers),
                  const SizedBox(height: 12),
                  
                  // Descripción
                  Text(
                    model.description,
                    style: TextStyleTheme.bodyText2.copyWith(
                      color: Colors.white.withAlpha(222),
                      fontSize: 15,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 12),
                  
                  // Información adicional
                  // TODO: Add referenceBudget when available in CustomerOpenQuotationCardViewModel
                  // if (model.referenceBudget != null) ...[
                  //   _buildInfoChip(
                  //     icon: Icons.account_balance_wallet_outlined,
                  //     label: '${model.referenceBudget!.formatWithSymbol()} ${l10n.currency}',
                  //     color: Colors.blue.shade400,
                  //   ),
                  //   const SizedBox(height: 8),
                  // ],
                  
                  // Footer con fecha y acción
                  _buildMobileFooter(context, hasOffers),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWebImage(BuildContext context) {
    return Hero(
      tag: 'tattooDesignImage_${model.id}',
      child: Container(
        width: Responsive.value(context, mobile: 100, tablet: 140, desktop: 160),
        height: Responsive.value(context, mobile: 100, tablet: 140, desktop: 160),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(51),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              model.tattooDesignImageUrl!,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                color: Colors.grey.shade800,
                child: const Icon(Icons.broken_image, color: Colors.white54),
              ),
            ),
            // Gradiente sutil para mejorar contraste
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withAlpha(25),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlaceholderImage(BuildContext context) {
    return Container(
      width: Responsive.value(context, mobile: 100, tablet: 140, desktop: 160),
      height: Responsive.value(context, mobile: 100, tablet: 140, desktop: 160),
      decoration: BoxDecoration(
        color: const Color(0xFF2A2E47),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFF52596E), width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.image_outlined,
            size: Responsive.value(context, mobile: 40, tablet: 50),
            color: Colors.white24,
          ),
          const SizedBox(height: 8),
          Text(
            'Sin imagen',
            style: TextStyleTheme.caption.copyWith(color: Colors.white38),
          ),
        ],
      ),
    );
  }

  Widget _buildMobileImageWithOverlay(BuildContext context, bool hasOffers) {
    return Stack(
      children: [
        Hero(
          tag: 'tattooDesignImage_${model.id}',
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.network(
              model.tattooDesignImageUrl!,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                color: Colors.grey.shade800,
                child: const Icon(Icons.broken_image, color: Colors.white54, size: 50),
              ),
            ),
          ),
        ),
        // Overlay con información de ofertas
        if (hasOffers)
          Positioned(
            top: 12,
            right: 12,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: const Color(0xFF4CAF50),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(51),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.local_offer, size: 16, color: Colors.white),
                  const SizedBox(width: 4),
                  Text(
                    '${model.offersCount}',
                    style: TextStyleTheme.bodyText2.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildOffersBanner(BuildContext context) {
    final l10n = S.of(context);
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFF4CAF50).withAlpha(230),
            const Color(0xFF45B649).withAlpha(230),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              l10n.offersCount(model.offersCount),
              style: TextStyleTheme.headline3.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              l10n.receivedOffers,
              style: TextStyleTheme.caption.copyWith(
                color: Colors.white.withAlpha(230),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWebHeader(BuildContext context, bool hasOffers) {
    final l10n = S.of(context);
    return Row(
      children: [
        // Estado
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: hasOffers 
                ? const Color(0xFF4CAF50).withAlpha(38)
                : Colors.grey.withAlpha(38),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: hasOffers 
                  ? const Color(0xFF4CAF50).withAlpha(128)
                  : Colors.grey.withAlpha(128),
              width: 1,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                hasOffers ? Icons.check_circle_outline : Icons.schedule,
                size: 16,
                color: hasOffers ? const Color(0xFF4CAF50) : Colors.grey,
              ),
              const SizedBox(width: 6),
              Text(
                hasOffers ? 'Activa' : 'Esperando ofertas',
                style: TextStyleTheme.caption.copyWith(
                  color: hasOffers ? const Color(0xFF4CAF50) : Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 12),
        
        // Contador de ofertas
        if (hasOffers) ...[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFF4CAF50),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              l10n.offersCount(model.offersCount),
              style: TextStyleTheme.caption.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
        
        const Spacer(),
        
        // Fecha
        Row(
          children: [
            Icon(Icons.calendar_today, size: 14, color: Colors.white38),
            const SizedBox(width: 4),
            Text(
              _formatDate(model.createdAt),
              style: TextStyleTheme.caption.copyWith(color: Colors.white38),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildMobileHeader(BuildContext context, bool hasOffers) {
    final l10n = S.of(context);
    return Row(
      children: [
        Icon(
          hasOffers ? Icons.check_circle : Icons.schedule,
          size: 20,
          color: hasOffers ? const Color(0xFF4CAF50) : Colors.grey,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            hasOffers 
                ? l10n.offersCount(model.offersCount) 
                : 'Esperando ofertas',
            style: TextStyleTheme.subtitle2.copyWith(
              color: hasOffers ? const Color(0xFF4CAF50) : Colors.white70,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        if (!hasOffers)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.orange.withAlpha(51),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.info_outline, size: 14, color: Colors.orange),
                const SizedBox(width: 4),
                Text(
                  'Nueva',
                  style: TextStyleTheme.caption.copyWith(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _buildWebFooter(BuildContext context, bool hasOffers) {
    final l10n = S.of(context);
    return Row(
      children: [
        // Información adicional
        // TODO: Add referenceBudget when available
        // if (model.referenceBudget != null) ...[
        //   _buildInfoChip(
        //     icon: Icons.account_balance_wallet_outlined,
        //     label: '${model.referenceBudget!.formatWithSymbol()} ${l10n.currency}',
        //     color: Colors.blue.shade400,
        //   ),
        //   const SizedBox(width: 12),
        // ],
        
        const Spacer(),
        
        // Botón de acción
        if (hasOffers)
          ElevatedButton.icon(
            onPressed: () => onViewOffersTap?.call(model.id),
            icon: const Icon(Icons.visibility_outlined, size: 18),
            label: Text(l10n.viewOffers),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF4CAF50),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
          )
        else
          OutlinedButton.icon(
            onPressed: () => onTap?.call(model.id),
            icon: const Icon(Icons.info_outline, size: 18),
            label: Text(l10n.viewDetails),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white70,
              side: const BorderSide(color: Colors.white24),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
          ),
      ],
    );
  }

  Widget _buildMobileFooter(BuildContext context, bool hasOffers) {
    final l10n = S.of(context);
    return Row(
      children: [
        Icon(Icons.access_time, size: 14, color: Colors.white38),
        const SizedBox(width: 4),
        Text(
          _formatDate(model.createdAt),
          style: TextStyleTheme.caption.copyWith(color: Colors.white38),
        ),
        const Spacer(),
        if (hasOffers)
          TextButton.icon(
            onPressed: () => onViewOffersTap?.call(model.id),
            icon: const Icon(Icons.arrow_forward, size: 16),
            label: Text(l10n.viewOffers),
            style: TextButton.styleFrom(
              foregroundColor: const Color(0xFF4CAF50),
            ),
          ),
      ],
    );
  }

  Widget _buildOffersPanel(BuildContext context, bool hasOffers) {
    final l10n = S.of(context);
    return Container(
      width: 200,
      margin: const EdgeInsets.only(left: 24),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: hasOffers 
            ? const Color(0xFF4CAF50).withAlpha(25)
            : Colors.grey.withAlpha(25),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: hasOffers 
              ? const Color(0xFF4CAF50).withAlpha(77)
              : Colors.grey.withAlpha(77),
          width: 1,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            hasOffers ? Icons.local_offer : Icons.hourglass_empty,
            size: 32,
            color: hasOffers ? const Color(0xFF4CAF50) : Colors.grey,
          ),
          const SizedBox(height: 8),
          Text(
            hasOffers 
                ? '${model.offersCount} ${model.offersCount == 1 ? "oferta" : "ofertas"}'
                : l10n.noOffersYet,
            style: TextStyleTheme.subtitle1.copyWith(
              color: hasOffers ? const Color(0xFF4CAF50) : Colors.white70,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          if (hasOffers) ...[
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => onViewOffersTap?.call(model.id),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4CAF50),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: Text('Revisar ofertas'),
            ),
          ],
        ],
      ),
    );
  }


  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);
    
    if (difference.inDays == 0) {
      return 'Hoy';
    } else if (difference.inDays == 1) {
      return 'Ayer';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} días atrás';
    } else {
      return '${date.day}/${date.month}/${date.year}';
    }
  }
}

