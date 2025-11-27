import 'package:flutter/material.dart';

class NotificationBadge extends StatelessWidget {
  final int count;
  final VoidCallback onTap;
  final double size;
  final Color color;
  final Color badgeColor;
  final Color textColor;

  const NotificationBadge({
    super.key,
    required this.count,
    required this.onTap,
    this.size = 24.0,
    this.color = Colors.white,
    this.badgeColor = Colors.red,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(28),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Icon(
              Icons.notifications_outlined,
              color: color,
              size: size,
            ),
            if (count > 0)
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: badgeColor,
                    shape: BoxShape.circle,
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 16,
                    minHeight: 16,
                  ),
                  child: Text(
                    count > 99 ? '99+' : count.toString(),
                    style: TextStyle(
                      color: textColor,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}