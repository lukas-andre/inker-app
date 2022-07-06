import 'dart:convert';

import 'package:equatable/equatable.dart';

class PredictionResult extends Equatable {
  const PredictionResult({
    required this.predictions,
    required this.status,
  });

  final List<Prediction> predictions;
  final String status;

  factory PredictionResult.fromRawJson(String str) =>
      PredictionResult.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PredictionResult.fromJson(Map<String, dynamic> json) =>
      PredictionResult(
        predictions: List<Prediction>.from(
            json['predictions'].map((x) => Prediction.fromJson(x))),
        status: json['status'],
      );

  Map<String, dynamic> toJson() => {
        'predictions': List<dynamic>.from(predictions.map((x) => x.toJson())),
        'status': status,
      };

  @override
  List<Object?> get props => [predictions, status];

  @override
  bool get stringify => true;
}

class Prediction extends Equatable {
  const Prediction({
    required this.description,
    required this.matchedSubstrings,
    required this.placeId,
    required this.reference,
    required this.structuredFormatting,
    required this.terms,
    required this.types,
  });

  final String description;
  final List<MatchedSubstring> matchedSubstrings;
  final String placeId;
  final String reference;
  final StructuredFormatting structuredFormatting;
  final List<Term> terms;
  final List<String> types;

  factory Prediction.fromRawJson(String str) =>
      Prediction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Prediction.fromJson(Map<String, dynamic> json) => Prediction(
        description: json['description'],
        matchedSubstrings: List<MatchedSubstring>.from(
            json['matched_substrings']
                .map((x) => MatchedSubstring.fromJson(x))),
        placeId: json['place_id'],
        reference: json['reference'],
        structuredFormatting:
            StructuredFormatting.fromJson(json['structured_formatting']),
        terms: List<Term>.from(json['terms'].map((x) => Term.fromJson(x))),
        types: List<String>.from(json['types'].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        'description': description,
        'matched_substrings':
            List<dynamic>.from(matchedSubstrings.map((x) => x.toJson())),
        'place_id': placeId,
        'reference': reference,
        'structured_formatting': structuredFormatting.toJson(),
        'terms': List<dynamic>.from(terms.map((x) => x.toJson())),
        'types': List<dynamic>.from(types.map((x) => x)),
      };

  @override
  List<Object?> get props => [
        description,
        matchedSubstrings,
        placeId,
        reference,
        structuredFormatting,
        terms,
        types,
      ];

  @override
  bool get stringify => true;
}

class MatchedSubstring extends Equatable {
  const MatchedSubstring({
    required this.length,
    required this.offset,
  });

  final int length;
  final int offset;

  factory MatchedSubstring.fromRawJson(String str) =>
      MatchedSubstring.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MatchedSubstring.fromJson(Map<String, dynamic> json) =>
      MatchedSubstring(
        length: json['length'],
        offset: json['offset'],
      );

  Map<String, dynamic> toJson() => {
        'length': length,
        'offset': offset,
      };

  @override
  List<Object?> get props => [length, offset];

  @override
  bool get stringify => true;
}

class StructuredFormatting extends Equatable {
  const StructuredFormatting({
    required this.mainText,
    required this.mainTextMatchedSubstrings,
    required this.secondaryText,
  });

  final String mainText;
  final List<MatchedSubstring> mainTextMatchedSubstrings;
  final String secondaryText;

  factory StructuredFormatting.fromRawJson(String str) =>
      StructuredFormatting.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StructuredFormatting.fromJson(Map<String, dynamic> json) =>
      StructuredFormatting(
        mainText: json['main_text'],
        mainTextMatchedSubstrings: List<MatchedSubstring>.from(
            json['main_text_matched_substrings']
                .map((x) => MatchedSubstring.fromJson(x))),
        secondaryText: json['secondary_text'],
      );

  Map<String, dynamic> toJson() => {
        'main_text': mainText,
        'main_text_matched_substrings': List<dynamic>.from(
            mainTextMatchedSubstrings.map((x) => x.toJson())),
        'secondary_text': secondaryText,
      };

  @override
  List<Object?> get props => [
        mainText,
        mainTextMatchedSubstrings,
        secondaryText,
      ];

  @override
  bool get stringify => true;
}

class Term extends Equatable {
  const Term({
    required this.offset,
    required this.value,
  });

  final int offset;
  final String value;

  factory Term.fromRawJson(String str) => Term.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Term.fromJson(Map<String, dynamic> json) => Term(
        offset: json['offset'],
        value: json['value'],
      );

  Map<String, dynamic> toJson() => {
        'offset': offset,
        'value': value,
      };

  @override
  List<Object?> get props => [offset, value];

  @override
  bool get stringify => true;
}
