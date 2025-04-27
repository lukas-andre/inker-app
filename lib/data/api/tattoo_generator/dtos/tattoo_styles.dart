import 'package:freezed_annotation/freezed_annotation.dart';

enum TattooStyle {
  @JsonValue('traditionalAmerican')
  traditionalAmerican,
  
  @JsonValue('neotraditional')
  neotraditional,
  
  @JsonValue('realism')
  realism,
  
  @JsonValue('watercolor')
  watercolor,
  
  @JsonValue('geometric')
  geometric,
  
  @JsonValue('blackwork')
  blackwork,
  
  @JsonValue('dotwork')
  dotwork,
  
  @JsonValue('japanese')
  japanese,
  
  @JsonValue('tribal')
  tribal,
  
  @JsonValue('newSchool')
  newSchool,
  
  @JsonValue('biomechanical')
  biomechanical,
  
  @JsonValue('minimalist')
  minimalist,
  
  @JsonValue('surrealism')
  surrealism,
  
  @JsonValue('ornamental')
  ornamental,
  
  @JsonValue('neoJapanese')
  neoJapanese,
  
  @JsonValue('celtic')
  celtic,
  
  @JsonValue('chicano')
  chicano,
  
  @JsonValue('abstract')
  abstract,
  
  @JsonValue('mandala')
  mandala,
  
  @JsonValue('fineline')
  fineline,
  
  @JsonValue('ignorantStyle')
  ignorantStyle,
}

