import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/explorer/explorer_page/explorer_page_bloc.dart';
import 'package:inker_studio/domain/blocs/location/location_bloc.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class CompactRangeSlider extends StatefulWidget {
  const CompactRangeSlider({super.key});

  @override
  State<CompactRangeSlider> createState() => _CompactRangeSliderState();
}

class _CompactRangeSliderState extends State<CompactRangeSlider> 
    with SingleTickerProviderStateMixin {
  bool _isExpanded = false;
  late AnimationController _animationController;
  late Animation<double> _expandAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _expandAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOutCubic,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    const List<double> quickRanges = [5.0, 10.0, 20.0, 50.0];
    
    return BlocBuilder<ExplorerPageBloc, ExplorerPageState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface.withAlpha(230),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(51),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Compact control
              InkWell(
                onTap: _toggleExpanded,
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Row(
                    children: [
                      // Icon
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary.withAlpha(51),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.radar,
                          size: 18,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      const SizedBox(width: 10),
                      
                      // Range info
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              '${state.range.toStringAsFixed(1)} km',
                              style: TextStyleTheme.bodyText2.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 8),
                            if (state.isLoading)
                              const SizedBox(
                                width: 12,
                                height: 12,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Colors.white54,
                                ),
                              )
                            else
                              Text(
                                '• ${state.artistFounded.length} ${state.artistFounded.length == 1 ? "artista" : "artistas"}',
                                style: TextStyleTheme.caption.copyWith(
                                  color: Colors.white54,
                                ),
                              ),
                          ],
                        ),
                      ),
                      
                      // Quick actions
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Quick decrease
                          IconButton(
                            icon: const Icon(Icons.remove_circle_outline, size: 20),
                            onPressed: state.range > 1.0 && !state.isLoading
                              ? () {
                                  final newRange = (state.range - 5).clamp(1.0, 50.0);
                                  context.read<ExplorerPageBloc>().add(
                                    ExplorerPageUpdateRange(range: newRange),
                                  );
                                  _updateRange(context, newRange);
                                }
                              : null,
                            color: Colors.white70,
                            disabledColor: Colors.white24,
                            padding: const EdgeInsets.all(4),
                            constraints: const BoxConstraints(),
                          ),
                          
                          // Quick increase
                          IconButton(
                            icon: const Icon(Icons.add_circle_outline, size: 20),
                            onPressed: state.range < 50.0 && !state.isLoading
                              ? () {
                                  final newRange = (state.range + 5).clamp(1.0, 50.0);
                                  context.read<ExplorerPageBloc>().add(
                                    ExplorerPageUpdateRange(range: newRange),
                                  );
                                  _updateRange(context, newRange);
                                }
                              : null,
                            color: Colors.white70,
                            disabledColor: Colors.white24,
                            padding: const EdgeInsets.all(4),
                            constraints: const BoxConstraints(),
                          ),
                          
                          const SizedBox(width: 8),
                          
                          // Expand/collapse
                          AnimatedRotation(
                            turns: _isExpanded ? 0.5 : 0.0,
                            duration: const Duration(milliseconds: 200),
                            child: const Icon(
                              Icons.expand_more,
                              color: Colors.white54,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              
              // Expanded options
              SizeTransition(
                sizeFactor: _expandAnimation,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: Column(
                    children: [
                      // Quick select chips
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: quickRanges.map((range) {
                            final isSelected = (state.range - range).abs() < 0.1;
                            return Padding(
                              padding: const EdgeInsets.only(right: 6),
                              child: FilterChip(
                                label: Text(
                                  '${range.toStringAsFixed(0)} km',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: isSelected ? Colors.white : Colors.white70,
                                  ),
                                ),
                                selected: isSelected,
                                onSelected: state.isLoading ? null : (_) {
                                  context.read<ExplorerPageBloc>().add(
                                    ExplorerPageUpdateRange(range: range),
                                  );
                                  _updateRange(context, range);
                                  // Auto-collapse after selection
                                  Future.delayed(const Duration(milliseconds: 300), () {
                                    if (mounted && _isExpanded) {
                                      _toggleExpanded();
                                    }
                                  });
                                },
                                selectedColor: Theme.of(context).colorScheme.secondary,
                                backgroundColor: Colors.white.withAlpha(25),
                                side: BorderSide.none,
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      
                      const SizedBox(height: 8),
                      
                      // Compact slider
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Theme.of(context).colorScheme.secondary,
                          inactiveTrackColor: Colors.white.withAlpha(51),
                          thumbColor: Theme.of(context).colorScheme.secondary,
                          overlayColor: Theme.of(context).colorScheme.secondary.withAlpha(51),
                          thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8),
                          overlayShape: const RoundSliderOverlayShape(overlayRadius: 16),
                          trackHeight: 4,
                        ),
                        child: Slider(
                          value: state.range,
                          min: 1.0,
                          max: 50.0,
                          divisions: 49,
                          onChanged: state.isLoading 
                            ? null 
                            : (value) {
                                context.read<ExplorerPageBloc>().add(
                                  ExplorerPageUpdateRange(range: value),
                                );
                              },
                          onChangeEnd: state.isLoading 
                            ? null 
                            : (value) => _updateRange(context, value),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
  
  void _updateRange(BuildContext context, double range) {
    final location = context.read<LocationBloc>().state.lastKnownLocation!;
    context.read<ExplorerPageBloc>().add(
      ExplorerPageFetchArtists(location: location),
    );
  }
}