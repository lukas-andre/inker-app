import 'package:flutter/material.dart';
import 'package:inker_studio/data/api/customer/dtos/search_customer_response.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class GuestChip extends StatelessWidget {
  final CustomerDTO guest;
  final VoidCallback onDeleted;

  const GuestChip({
    super.key,
    required this.guest,
    required this.onDeleted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: guest.profileThumbnail != null
                ? NetworkImage(guest.profileThumbnail!)
                : null,
            backgroundColor: secondaryColor,
            child: guest.profileThumbnail == null
                ? Text(
                    guest.firstName[0].toUpperCase() +
                        guest.lastName[0].toUpperCase(),
                    style: TextStyleTheme.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  )
                : null,
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${guest.firstName} ${guest.lastName}',
                overflow: TextOverflow.ellipsis,
                style: TextStyleTheme.copyWith(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(guest.contactEmail,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyleTheme.copyWith(
                    color: Colors.black,
                    fontSize: 12,
                  )),
            ],
          ),
          const SizedBox(width: 8),
          IconButton(
            icon: Icon(Icons.close, color: tertiaryColor),
            onPressed: onDeleted,
          ),
        ],
      ),
    );
  }
}
