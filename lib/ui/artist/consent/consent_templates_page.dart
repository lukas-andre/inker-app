import 'package:flutter/material.dart';
import 'package:inker_studio/ui/theme/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class ConsentTemplatesPage extends StatelessWidget {
  const ConsentTemplatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBetaBanner(context),
              const SizedBox(height: 24),
              Text(
                'Consentimiento Simplificado (V1)',
                style: TextStyleTheme.headline3,
              ),
              const SizedBox(height: 8),
              Text(
                'Para esta primera versión, hemos incluido un formulario de consentimiento estándar y fijo. En el futuro, podrás crear y personalizar tus propias plantillas aquí.',
                style: TextStyleTheme.bodyText1.copyWith(color: Colors.white70),
              ),
              const SizedBox(height: 24),
              _buildConsentPreview(context),
              const SizedBox(height: 24),
              _buildActivationCta(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBetaBanner(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.science_outlined,
            color: Theme.of(context).colorScheme.secondary,
            size: 28,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Función en Beta',
                  style: TextStyleTheme.subtitle1.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Esta sección está en desarrollo. ¡Gracias por tu paciencia!',
                  style: TextStyleTheme.bodyText2
                      .copyWith(color: Colors.white.withOpacity(0.8)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildConsentPreview(BuildContext context) {
    const String consentText =
        'Yo, el abajo firmante, doy mi permiso al tatuador para realizar el procedimiento de tatuaje. He sido informado de los riesgos, instrucciones de cuidado posterior y posibles complicaciones. Libero al artista y al estudio de cualquier responsabilidad, conocida o desconocida, que pueda surgir de este procedimiento. Confirmo que soy mayor de 18 años y no estoy bajo la influencia de alcohol o drogas.';

    return Card(
      color: explorerSecondaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Vista Previa del Consentimiento Estándar',
              style: TextStyleTheme.subtitle1,
            ),
            const Divider(height: 24),
            Text(
              consentText,
              style: TextStyleTheme.bodyText2.copyWith(
                color: Colors.white70,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActivationCta(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.secondary.withOpacity(0.9),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: () => Navigator.of(context).pushNamed('/settings'),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              const Icon(Icons.toggle_on_outlined,
                  color: Colors.white, size: 32),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Activar Consentimiento',
                      style: TextStyleTheme.subtitle1
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Ve a Ajustes para requerir este consentimiento en tus citas.',
                      style: TextStyleTheme.bodyText2
                          .copyWith(color: Colors.white.withOpacity(0.9)),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios,
                  color: Colors.white, size: 16),
            ],
          ),
        ),
      ),
    );
  }
}
