import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' show LatLng;
import 'package:inker_studio/domain/blocs/explorer/explorer_page/explorer_page_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/map/map_bloc.dart';
import 'package:inker_studio/domain/blocs/location/location_bloc.dart';
import 'package:inker_studio/domain/services/platform/platform_service.dart';
import 'package:inker_studio/ui/customer/explore/views/list/explorer_list_view.dart';
import 'package:inker_studio/ui/customer/explore/views/list/explorer_list_view_web.dart';
import 'package:inker_studio/ui/customer/explore/views/map/enhanced_explorer_map_view.dart';
import 'package:inker_studio/ui/customer/explore/views/map/explorer_map_view_web.dart';
import 'package:inker_studio/ui/customer/explore/widgets/draggable_artist_info_sheet/draggable_artist_info_sheet.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';

class ExplorerPage extends StatefulWidget {
  final bool hideHeader;

  const ExplorerPage({super.key, this.hideHeader = false});

  @override
  State<ExplorerPage> createState() => _ExplorerPageState();
}

class _ExplorerPageState extends State<ExplorerPage> {
  late LocationBloc locationBloc;
  late ExplorerPageBloc explorerPageBloc;
  late MapBloc mapBloc;

  @override
  void initState() {
    super.initState();
    locationBloc = context.read<LocationBloc>();
    locationBloc.startFollowingUser();
    explorerPageBloc = context.read<ExplorerPageBloc>();
    mapBloc = context.read<MapBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExplorerPageBloc, ExplorerPageState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: (() => FocusScope.of(context).unfocus()),
          child: Scaffold(
            // Si hideHeader es true, no mostramos un AppBar propio, ya que lo gestiona la página principal
            appBar: widget.hideHeader
                ? null
                : AppBar(
                    title: Text(
                      'Explorar',
                      style: TextStyleTheme.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    elevation: 0,
                    backgroundColor: Theme.of(context).colorScheme.surface,
                  ),
            backgroundColor: Theme.of(context).colorScheme.surface,
            body: BlocBuilder<LocationBloc, LocationState>(
              buildWhen: (previous, current) =>
                  previous.lastKnownLocation == null &&
                  current.lastKnownLocation != null,
              builder: (context, locationState) {
                if (locationState.lastKnownLocation == null) {
                  return Center(
                    child: InkerProgressIndicator(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  );
                }

                return BlocBuilder<ExplorerPageBloc, ExplorerPageState>(
                  buildWhen: (previous, current) =>
                      previous.view != current.view ||
                      previous.isLoading != current.isLoading ||
                      previous.firstLoad != current.firstLoad,
                  builder: (context, state) {
                    // THIS IS LOADING STATE
                    if (state.isLoading && state.firstLoad) {
                      return Center(
                        child: InkerProgressIndicator(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      );
                    }

                    // THIS IS EMPTY ARTIST STATE
                    if (state.artistFounded.isEmpty) {
                      return Center(
                        child: Text(
                          'No artist found',
                          style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
                        ),
                      );
                    } else {
                      // THIS IS ARTIST FOUND STATE
                      return Stack(
                          key: const Key('explorerPageStack'),
                          children: [
                            ExplorerViewByType(
                                view: state.view,
                                lastLocation: locationState.lastKnownLocation!),
                            // Eliminamos los botones de cambio de vista ya que están en la barra de navegación
                            const DraggableArtistInfoSheet(),
                          ]);
                    }
                  },
                );
              },
            ),
            floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
            floatingActionButtonLocation:
                FloatingActionButtonLocation.startDocked,
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    locationBloc.stopFollowingUser();
    mapBloc.add(const DeselectAllMarkerEvent(closeDragSheet: false));
    super.dispose();
  }
}

class ExplorerViewByType extends StatelessWidget {
  final ExplorerView view;
  final LatLng lastLocation;

  const ExplorerViewByType(
      {super.key, required this.view, required this.lastLocation});

  @override
  Widget build(BuildContext context) {
    final platformService = context.read<PlatformService>();
    final isWeb = platformService.isWeb;

    if (view == ExplorerView.list) {
      return isWeb ? const ExplorerListViewWeb() : const ExplorerListView();
    } else {
      return isWeb ? const ExplorerMapViewWeb() : const EnhancedExplorerMapView();
    }
  }
}
