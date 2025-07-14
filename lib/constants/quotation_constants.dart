/// Constants for quotation-related features
class QuotationConstants {
  // Distance presets
  static const List<DistancePreset> distancePresets = [
    DistancePreset(
      value: 5,
      labelKey: 'myNeighborhood',
      descriptionKey: 'nearbyLocationDescription',
      iconData: 0xe88a, // Icons.home
    ),
    DistancePreset(
      value: 15,
      labelKey: 'myCity',
      descriptionKey: 'cityLocationDescription', 
      iconData: 0xe7f1, // Icons.location_city
    ),
    DistancePreset(
      value: 50,
      labelKey: 'myRegion',
      descriptionKey: 'regionLocationDescription',
      iconData: 0xe55f, // Icons.map
    ),
    DistancePreset(
      value: 999,
      labelKey: 'noDistanceLimit',
      descriptionKey: 'unlimitedLocationDescription',
      iconData: 0xe894, // Icons.public
    ),
  ];

  // Special value for unlimited distance
  static const int unlimitedDistance = 999;
}

/// Distance preset model
class DistancePreset {
  final int value;
  final String labelKey;
  final String descriptionKey;
  final int iconData;

  const DistancePreset({
    required this.value,
    required this.labelKey,
    required this.descriptionKey,
    required this.iconData,
  });
}