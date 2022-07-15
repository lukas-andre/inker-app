import 'dart:convert';

class PlaceDetailsResponse {
  PlaceDetailsResponse({
    required this.htmlAttributions,
    required this.result,
    required this.status,
  });

  final List<dynamic> htmlAttributions;
  final PlaceDetailsResult? result;
  final String status;

  factory PlaceDetailsResponse.fromJson(Map<String, dynamic> json) {
    return PlaceDetailsResponse(
      htmlAttributions: json['html_attributions'] == null
          ? []
          : List<dynamic>.from(json['html_attributions']!.map((x) => x)),
      result: json['result'] == null
          ? null
          : PlaceDetailsResult.fromJson(json['result']),
      status: json['status'] ?? '',
    );
  }

  factory PlaceDetailsResponse.fromRawJson(String str) =>
      PlaceDetailsResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  @override
  String toString() {
    return '$htmlAttributions, $result, $status';
  }

  Map<String, dynamic> toJson() => {
        'html_attributions': List<dynamic>.from(htmlAttributions.map((x) => x)),
        'result': result?.toJson(),
        'status': status,
      };
}

class PlaceDetailsResult {
  PlaceDetailsResult({
    required this.addressComponents,
    required this.formattedAddress,
    required this.geometry,
    required this.name,
  });

  final List<AddressComponent> addressComponents;
  final String formattedAddress;
  final Geometry? geometry;
  final String name;

  factory PlaceDetailsResult.fromJson(Map<String, dynamic> json) {
    return PlaceDetailsResult(
      addressComponents: json['address_components'] == null
          ? []
          : List<AddressComponent>.from(json['address_components']!
              .map((x) => AddressComponent.fromJson(x))),
      formattedAddress: json['formatted_address'] ?? '',
      geometry:
          json['geometry'] == null ? null : Geometry.fromJson(json['geometry']),
      name: json['name'] ?? '',
    );
  }

  @override
  String toString() {
    return '$addressComponents, $formattedAddress, $geometry, $name';
  }

  Map<String, dynamic> toJson() => {
        'address_components': List<AddressComponent>.from(
            addressComponents.map((x) => x.toJson())),
        'formatted_address': formattedAddress,
        'geometry': geometry?.toJson(),
        'name': name,
      };
}

class AddressComponent {
  AddressComponent({
    required this.longName,
    required this.shortName,
    required this.types,
  });

  final String longName;
  final String shortName;
  final List<String> types;

  factory AddressComponent.fromJson(Map<String, dynamic> json) {
    return AddressComponent(
      longName: json['long_name'] ?? '',
      shortName: json['short_name'] ?? '',
      types: json['types'] == null
          ? []
          : List<String>.from(json['types']!.map((x) => x)),
    );
  }

  @override
  String toString() {
    return '$longName, $shortName, $types';
  }

  Map<String, dynamic> toJson() => {
        'long_name': longName,
        'short_name': shortName,
        'types': List<String>.from(types.map((x) => x)),
      };
}

class Geometry {
  Geometry({
    required this.location,
    required this.viewport,
  });

  final Location? location;
  final Viewport? viewport;

  factory Geometry.fromJson(Map<String, dynamic> json) {
    return Geometry(
      location:
          json['location'] == null ? null : Location.fromJson(json['location']),
      viewport:
          json['viewport'] == null ? null : Viewport.fromJson(json['viewport']),
    );
  }

  @override
  String toString() {
    return '$location, $viewport';
  }

  Map<String, dynamic> toJson() => {
        'location': location?.toJson(),
        'viewport': viewport?.toJson(),
      };
}

class Location {
  Location({
    required this.lat,
    required this.lng,
  });

  final double lat;
  final double lng;

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      lat: json['lat'] ?? 0.toDouble(),
      lng: json['lng'] ?? 0.toDouble(),
    );
  }

  @override
  String toString() {
    return '$lat, $lng';
  }

  Map<String, dynamic> toJson() => {
        'lat': lat,
        'lng': lng,
      };
}

class Viewport {
  Viewport({
    required this.northeast,
    required this.southwest,
  });

  final Location? northeast;
  final Location? southwest;

  factory Viewport.fromJson(Map<String, dynamic> json) {
    return Viewport(
      northeast: json['northeast'] == null
          ? null
          : Location.fromJson(json['northeast']),
      southwest: json['southwest'] == null
          ? null
          : Location.fromJson(json['southwest']),
    );
  }

  @override
  String toString() {
    return '$northeast, $southwest';
  }

  Map<String, dynamic> toJson() => {
        'northeast': northeast?.toJson(),
        'southwest': southwest?.toJson(),
      };
}
