import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/consent/signed_consent/signed_consent_bloc.dart';
import 'package:inker_studio/domain/models/consent/form_template.dart';
import 'package:inker_studio/domain/models/consent/signed_consent.dart';
import 'package:inker_studio/domain/models/consent/form_schema.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/customer/consent/consent_form_dialog.dart';
import 'package:inker_studio/ui/theme/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';

class ConsentSigningPage extends StatefulWidget {
  static const String routeName = '/consent-signing';
  
  final String eventId;
  final String userId;
  
  const ConsentSigningPage({
    super.key,
    required this.eventId,
    required this.userId,
  });

  @override
  State<ConsentSigningPage> createState() => _ConsentSigningPageState();
}

class _ConsentSigningPageState extends State<ConsentSigningPage> {
  final Map<String, dynamic> _formData = {};
  final Map<String, GlobalKey<FormState>> _formKeys = {};
  
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SignedConsentBloc>().add(
        SignedConsentEvent.loadRequiredConsentsForEvent(widget.eventId, widget.userId),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text(
          l10n.consentForms,
          style: TextStyleTheme.headline2,
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: BlocConsumer<SignedConsentBloc, SignedConsentState>(
        listener: (context, state) {
          state.maybeWhen(
            signSuccess: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                  backgroundColor: Colors.green,
                ),
              );
              // Check if all consents are signed
              context.read<SignedConsentBloc>().add(
                SignedConsentEvent.checkConsentStatus(widget.eventId, widget.userId),
              );
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                  backgroundColor: Colors.red,
                ),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text('Initialize consent forms')),
            loading: () => const Center(child: InkerProgressIndicator()),
            loaded: (eventId, userId, requiredConsents, signedConsents, hasSignedAll) => 
                _buildConsentsList(context, requiredConsents, signedConsents, hasSignedAll),
            signingInProgress: () => const Center(child: InkerProgressIndicator()),
            signSuccess: (message) => const Center(child: InkerProgressIndicator()),
            error: (message) => _buildErrorState(context, message),
          );
        },
      ),
    );
  }

  Widget _buildConsentsList(
    BuildContext context,
    List<FormTemplate> requiredConsents,
    List<SignedConsent> signedConsents,
    bool hasSignedAll,
  ) {
    final l10n = S.of(context);
    
    if (requiredConsents.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              size: 64,
              color: Colors.green,
            ),
            const SizedBox(height: 16),
            Text(
              l10n.noConsentRequired,
              style: TextStyleTheme.bodyText1.copyWith(color: Colors.white70),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        // Progress indicator
        if (requiredConsents.isNotEmpty) ...[
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: explorerSecondaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      hasSignedAll ? Icons.check_circle : Icons.pending,
                      color: hasSignedAll ? Colors.green : Colors.orange,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      hasSignedAll ? l10n.allConsentsCompleted : l10n.consentProgress,
                      style: TextStyleTheme.subtitle1,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                LinearProgressIndicator(
                  value: signedConsents.length / requiredConsents.length,
                  backgroundColor: Colors.white24,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    hasSignedAll ? Colors.green : Theme.of(context).colorScheme.secondary,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '${signedConsents.length}/${requiredConsents.length} ${l10n.completed}',
                  style: TextStyleTheme.caption.copyWith(color: Colors.white70),
                ),
              ],
            ),
          ),
        ],
        
        // Consent forms list
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: requiredConsents.length,
            itemBuilder: (context, index) {
              final template = requiredConsents[index];
              final isSigned = signedConsents.any((signed) => signed.formTemplateId == template.id);
              return _buildConsentCard(context, template, isSigned);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildConsentCard(BuildContext context, FormTemplate template, bool isSigned) {
    final l10n = S.of(context);
    
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      color: explorerSecondaryColor,
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: isSigned ? Colors.green.withOpacity(0.2) : Colors.orange.withOpacity(0.2),
            shape: BoxShape.circle,
          ),
          child: Icon(
            isSigned ? Icons.check_circle : Icons.description,
            color: isSigned ? Colors.green : Colors.orange,
          ),
        ),
        title: Text(
          template.title,
          style: TextStyleTheme.subtitle1,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text(
              template.content.description ?? l10n.consentFormDescription,
              style: TextStyleTheme.bodyText2.copyWith(color: Colors.white70),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Icon(
                  isSigned ? Icons.check : Icons.pending,
                  size: 16,
                  color: isSigned ? Colors.green : Colors.orange,
                ),
                const SizedBox(width: 4),
                Text(
                  isSigned ? l10n.signed : l10n.pendingSignature,
                  style: TextStyleTheme.caption.copyWith(
                    color: isSigned ? Colors.green : Colors.orange,
                  ),
                ),
              ],
            ),
          ],
        ),
        trailing: isSigned 
          ? const Icon(Icons.check_circle, color: Colors.green)
          : const Icon(Icons.arrow_forward_ios, color: Colors.white54),
        onTap: isSigned ? null : () => _showConsentForm(context, template),
      ),
    );
  }

  Widget _buildErrorState(BuildContext context, String message) {
    final l10n = S.of(context);
    
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 64,
              color: Theme.of(context).colorScheme.error,
            ),
            const SizedBox(height: 16),
            Text(
              message,
              style: TextStyleTheme.bodyText1.copyWith(color: Colors.red),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {
                context.read<SignedConsentBloc>().add(
                  SignedConsentEvent.loadRequiredConsentsForEvent(widget.eventId, widget.userId),
                );
              },
              icon: const Icon(Icons.refresh),
              label: Text(l10n.tryAgain),
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showConsentForm(BuildContext context, FormTemplate template) async {
    final result = await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (context) => ConsentFormDialog(
        template: template,
        eventId: widget.eventId,
        userId: widget.userId,
      ),
    );

    // If consent was signed successfully, refresh the list
    if (result == true) {
      context.read<SignedConsentBloc>().add(
        SignedConsentEvent.loadRequiredConsentsForEvent(widget.eventId, widget.userId),
      );
    }
  }
} 