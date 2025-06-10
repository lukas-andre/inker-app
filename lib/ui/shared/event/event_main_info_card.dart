import 'package:flutter/material.dart';
import 'package:inker_studio/domain/models/artist/artist.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:intl/intl.dart';

class EventMainInfoCard extends StatelessWidget {
  final String title;
  final String color;
  final String status;
  final DateTime startDate;
  final DateTime endDate;
  final Artist? artist;
  final VoidCallback? onArtistTap;

  const EventMainInfoCard({
    super.key,
    required this.title,
    required this.color,
    required this.status,
    required this.startDate,
    required this.endDate,
    this.artist,
    this.onArtistTap,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    // Use Chilean locale for formatting (dates are already in local timezone from models)
    final DateFormat dateFormat = DateFormat('d MMM yyyy', 'es_CL');
    final DateFormat timeFormat = DateFormat('HH:mm', 'es_CL');
    
    return Card(
      margin: const EdgeInsets.all(16),
      color: Theme.of(context).cardColor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                _StatusChip(status: status),
              ],
            ),
            Divider(height: 32, color: Theme.of(context).colorScheme.onSecondary),
            if (artist != null) ...[
              _InfoRow(
                icon: Icons.person,
                title: l10n.artist,
                content: artist!.username ?? '-',
                onTap: onArtistTap,
              ),
              const SizedBox(height: 12),
            ],
            _InfoRow(
              icon: Icons.calendar_today,
              title: l10n.date,
              content: dateFormat.format(startDate),
            ),
            const SizedBox(height: 12),
            _InfoRow(
              icon: Icons.access_time,
              title: l10n.hour,
              content: '${timeFormat.format(startDate)} - ${timeFormat.format(endDate)}',
            ),
            const SizedBox(height: 12),
            _InfoRow(
              icon: Icons.hourglass_empty,
              title: l10n.duration,
              content: _formatDuration(startDate, endDate),
            ),
          ],
        ),
      ),
    );
  }

  String _formatDuration(DateTime start, DateTime end) {
    final duration = end.difference(start);
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    if (hours > 0) {
      return '$hours h ${minutes > 0 ? '$minutes min' : ''}';
    } else {
      return '$minutes min';
    }
  }
}

class _StatusChip extends StatelessWidget {
  final String status;
  const _StatusChip({required this.status});

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    final color = _statusColor(status);
    final text = _statusText(l10n, status);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelMedium?.copyWith(color: color),
      ),
    );
  }

  Color _statusColor(String status) {
    switch (status) {
      case 'created':
        return Colors.green;
      case 'scheduled':
        return Colors.green;
      case 'pending':
        return Colors.orange;
      case 'completed':
        return Colors.blue;
      case 'canceled':
        return Colors.red;
      case 'rescheduled':
        return Colors.purple;
      case 'in_progress':
        return Colors.blue;
      case 'waiting_for_photos':
        return Colors.amber;
      case 'waiting_for_review':
        return Colors.purple;
      case 'reviewed':
        return Colors.green;
      case 'confirmed':
        return Colors.green;
      default:
        return Colors.grey;
    }
  }

  String _statusText(S l10n, String status) {
    switch (status) {
      case 'created':
        return l10n.confirmationPending;
      case 'scheduled':
        return l10n.scheduled;
      case 'pending':
        return l10n.pending;
      case 'completed':
        return l10n.completed;
      case 'canceled':
        return l10n.canceled;
      case 'rescheduled':
        return l10n.rescheduled;
      case 'in_progress':
        return l10n.inProgress;
      case 'waiting_for_photos':
        return l10n.waitingForPhotos;
      case 'waiting_for_review':
        return l10n.waitingForReview;
      case 'reviewed':
        return l10n.reviewed;
      case 'confirmed':
        return l10n.confirmed;
      default:
        return l10n.unknown;
    }
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String content;
  final VoidCallback? onTap;
  const _InfoRow({required this.icon, required this.title, required this.content, this.onTap});

  @override
  Widget build(BuildContext context) {
    final row = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.grey, size: 20),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.grey)),
              const SizedBox(height: 4),
              Text(
                content,
                style: onTap != null
                    ? Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                        decoration: TextDecoration.underline,
                      )
                    : Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ],
    );
    if (onTap != null) {
      return InkWell(
        onTap: onTap,
        child: row,
      );
    }
    return row;
  }
} 