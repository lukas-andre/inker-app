import 'package:flutter/material.dart';
import 'package:inker_studio/ui/theme/app_styles.dart';

class WebRegisterButtonWrapper extends StatefulWidget {
  final Widget child;
  final double height;
  
  const WebRegisterButtonWrapper({
    super.key,
    required this.child,
    this.height = 200,
  });
  
  @override
  State<WebRegisterButtonWrapper> createState() => _WebRegisterButtonWrapperState();
}

class _WebRegisterButtonWrapperState extends State<WebRegisterButtonWrapper> 
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  bool _isHovered = false;
  
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 1.05,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() => _isHovered = true);
        _controller.forward();
      },
      onExit: (_) {
        setState(() => _isHovered = false);
        _controller.reverse();
      },
      child: AnimatedBuilder(
        animation: _scaleAnimation,
        builder: (context, child) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: Container(
              height: widget.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: _isHovered 
                    ? secondaryColor.withValues(alpha: 0.3)
                    : Colors.transparent,
                  width: 2,
                ),
                boxShadow: [
                  BoxShadow(
                    color: _isHovered 
                      ? secondaryColor.withValues(alpha: 0.2)
                      : Colors.black.withValues(alpha: 0.1),
                    blurRadius: _isHovered ? 30 : 20,
                    offset: Offset(0, _isHovered ? 8 : 4),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: widget.child,
              ),
            ),
          );
        },
      ),
    );
  }
}