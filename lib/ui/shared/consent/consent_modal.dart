import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/consent/consent_status/consent_status_bloc.dart';
import 'package:inker_studio/domain/blocs/consent/consent_status/consent_status_event.dart';
import 'package:inker_studio/domain/blocs/consent/consent_status/consent_status_state.dart';
import 'package:inker_studio/ui/theme/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';

class ConsentModal extends StatefulWidget {
  final String eventId;
  final VoidCallback onAccept;
  final VoidCallback onCancel;

  const ConsentModal({
    super.key,
    required this.eventId,
    required this.onAccept,
    required this.onCancel,
  });

  @override
  State<ConsentModal> createState() => _ConsentModalState();
}

class _ConsentModalState extends State<ConsentModal> 
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final _signatureController = TextEditingController();
  bool _termsAccepted = false;
  bool _risksUnderstood = false;
  bool _privacyAccepted = false;
  
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  bool _showContent = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    
    _scaleAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOutBack,
    ));

    // Iniciar la animación inmediatamente
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _animationController.forward();
      }
    });
    
    // Mostrar contenido después de un delay
    Future.delayed(const Duration(milliseconds: 600), () {
      if (mounted) {
        setState(() {
          _showContent = true;
        });
      }
    });
  }

  @override
  void dispose() {
    _signatureController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  void _handleAccept() {
    if (_formKey.currentState?.validate() ?? false) {
      context.read<ConsentStatusBloc>().add(
            ConsentStatusEvent.acceptTerms(
              widget.eventId,
              _signatureController.text,
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConsentStatusBloc, ConsentStatusState>(
      listener: (context, state) {
        print('ConsentModal: Received state: $state');
        state.maybeWhen(
          termsAccepted: () {
            print('ConsentModal: Terms accepted, calling onAccept');
            if (mounted) {
              widget.onAccept();
            }
          },
          error: (message) {
            print('ConsentModal: Error state received: $message');
            if (mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          orElse: () {
            print('ConsentModal: Other state received: $state');
          },
        );
      },
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: Dialog(
              backgroundColor: explorerSecondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 400),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                },
                child: _showContent 
                    ? _buildFullContent() 
                    : _buildLoadingContent(),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildLoadingContent() {
    return Container(
      key: const ValueKey('loading'),
      padding: const EdgeInsets.all(40),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkerProgressIndicator(
            color: Color(0xff7450ff),
          ),
          SizedBox(height: 20),
          Text(
            'Cargando términos...',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFullContent() {
    return Container(
      key: const ValueKey('content'),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Términos y Condiciones',
                  style: TextStyleTheme.headline3,
                ),
                const SizedBox(height: 16),
                BlocBuilder<ConsentStatusBloc, ConsentStatusState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      loaded: (eventId, hasSigned, signedAt, templateTitle) {
                        if (hasSigned) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ya has aceptado los términos y condiciones',
                                style: TextStyleTheme.subtitle1.copyWith(color: Colors.green),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Fecha de aceptación: ${signedAt.toString().split('.')[0]}',
                                style: TextStyleTheme.bodyText2.copyWith(color: Colors.white70),
                              ),
                              const SizedBox(height: 24),
                              Text(
                                'Puedes continuar con el proceso.',
                                style: TextStyleTheme.bodyText2.copyWith(color: Colors.white70),
                              ),
                            ],
                          );
                        }
                        
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Términos y Condiciones Generales de Inker',
                              style: TextStyleTheme.subtitle1,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Al aceptar estos términos, confirmas tu acuerdo con las condiciones del servicio y el proceso de tatuaje.',
                              style: TextStyleTheme.bodyText2.copyWith(color: Colors.white70),
                            ),
                          ],
                        );
                      },
                      orElse: () => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Términos y Condiciones Generales de Inker',
                            style: TextStyleTheme.subtitle1,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Al aceptar estos términos, confirmas tu acuerdo con las condiciones del servicio y el proceso de tatuaje.',
                            style: TextStyleTheme.bodyText2.copyWith(color: Colors.white70),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(height: 24),
                
                // Checkboxes
                BlocBuilder<ConsentStatusBloc, ConsentStatusState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      loaded: (eventId, hasSigned, signedAt, templateTitle) {
                        if (hasSigned) {
                          return const SizedBox.shrink();
                        }
                        
                        return _buildCheckboxes();
                      },
                      orElse: () => _buildCheckboxes(),
                    );
                  },
                ),
                
                const SizedBox(height: 24),
                
                // Signature field
                BlocBuilder<ConsentStatusBloc, ConsentStatusState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      loaded: (eventId, hasSigned, signedAt, templateTitle) {
                        if (hasSigned) {
                          return const SizedBox.shrink();
                        }
                        
                        return _buildSignatureField();
                      },
                      orElse: () => _buildSignatureField(),
                    );
                  },
                ),
                
                const SizedBox(height: 32),
                
                // Buttons
                _buildButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCheckboxes() {
    return Column(
      children: [
        CheckboxListTile(
          value: _termsAccepted,
          onChanged: (value) => setState(() => _termsAccepted = value ?? false),
          title: Text(
            'Acepto los términos y condiciones generales de la plataforma Inker',
            style: TextStyleTheme.bodyText2,
          ),
          activeColor: Theme.of(context).colorScheme.secondary,
          checkColor: Colors.white,
          contentPadding: EdgeInsets.zero,
        ),
        
        CheckboxListTile(
          value: _risksUnderstood,
          onChanged: (value) => setState(() => _risksUnderstood = value ?? false),
          title: Text(
            'Confirmo que he leído y entiendo los riesgos asociados con el proceso de tatuaje',
            style: TextStyleTheme.bodyText2,
          ),
          activeColor: Theme.of(context).colorScheme.secondary,
          checkColor: Colors.white,
          contentPadding: EdgeInsets.zero,
        ),
        
        CheckboxListTile(
          value: _privacyAccepted,
          onChanged: (value) => setState(() => _privacyAccepted = value ?? false),
          title: Text(
            'Autorizo el procesamiento de mis datos personales conforme a la política de privacidad',
            style: TextStyleTheme.bodyText2,
          ),
          activeColor: Theme.of(context).colorScheme.secondary,
          checkColor: Colors.white,
          contentPadding: EdgeInsets.zero,
        ),
      ],
    );
  }

  Widget _buildSignatureField() {
    return TextFormField(
      controller: _signatureController,
      decoration: InputDecoration(
        labelText: 'Firma Digital (nombre completo)',
        labelStyle: TextStyleTheme.bodyText2.copyWith(color: Colors.white70),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white24),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      style: TextStyleTheme.bodyText2,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor ingresa tu nombre completo';
        }
        return null;
      },
    );
  }

  Widget _buildButtons() {
    return Wrap(
      alignment: WrapAlignment.end,
      spacing: 16,
      children: [
        TextButton(
          onPressed: widget.onCancel,
          child: Text(
            'Cancelar',
            style: TextStyleTheme.button.copyWith(
              color: Colors.white70,
            ),
          ),
        ),
        BlocBuilder<ConsentStatusBloc, ConsentStatusState>(
          builder: (context, state) {
            return state.maybeWhen(
              loaded: (eventId, hasSigned, signedAt, templateTitle) {
                if (hasSigned) {
                  return ElevatedButton(
                    onPressed: widget.onAccept,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                    ),
                    child: Text(
                      'Continuar',
                      style: TextStyleTheme.button,
                    ),
                  );
                }
                
                final canAccept = _termsAccepted && 
                                _risksUnderstood && 
                                _privacyAccepted && 
                                _signatureController.text.isNotEmpty;
                
                return ElevatedButton(
                  onPressed: !canAccept ? null : () {
                    print('ConsentModal: Accept button pressed');
                    _handleAccept();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                  ),
                  child: Text(
                    'Aceptar',
                    style: TextStyleTheme.button,
                  ),
                );
              },
              acceptingTerms: () => ElevatedButton(
                onPressed: null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                ),
                child: const InkerProgressIndicator(
                  color: Colors.white,
                ),
              ),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ],
    );
  }
} 