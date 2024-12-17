import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/works/works_bloc.dart';
import 'package:inker_studio/ui/customer/artist_profile/artist_profile_gallery.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';

class ArtistWorksSection extends StatelessWidget {
  final int artistId;
  
  const ArtistWorksSection({
    super.key,
    required this.artistId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      key: ValueKey('artist_works_$artistId'),
      create: (context) => WorksBloc(
        agendaService: context.read(),
        sessionService: context.read(),
      )..add(WorksEvent.loadWorks(artistId)),
      child: BlocBuilder<WorksBloc, WorksState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(child: InkerProgressIndicator()),
            loaded: (works) {
              if (works.isEmpty) return const SizedBox.shrink();
              
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Trabajos realizados',
                      style: TextStyleTheme.copyWith(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ArtistGallery(works: works),
                  ],
                ),
              );
            },
            error: (message) => Center(
              child: Text(
                'Error: $message',
                style: TextStyleTheme.copyWith(color: Colors.red),
              ),
            ),
          );
        },
      ),
    );
  }
}