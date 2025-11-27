// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_tattoo_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenerateTattooRequestDtoImpl _$$GenerateTattooRequestDtoImplFromJson(
        Map json) =>
    _$GenerateTattooRequestDtoImpl(
      userInput: json['userInput'] as String,
      style: $enumDecode(_$TattooStyleEnumMap, json['style']),
    );

Map<String, dynamic> _$$GenerateTattooRequestDtoImplToJson(
        _$GenerateTattooRequestDtoImpl instance) =>
    <String, dynamic>{
      'userInput': instance.userInput,
      'style': _$TattooStyleEnumMap[instance.style]!,
    };

const _$TattooStyleEnumMap = {
  TattooStyle.traditionalAmerican: 'traditionalAmerican',
  TattooStyle.neotraditional: 'neotraditional',
  TattooStyle.realism: 'realism',
  TattooStyle.watercolor: 'watercolor',
  TattooStyle.geometric: 'geometric',
  TattooStyle.blackwork: 'blackwork',
  TattooStyle.dotwork: 'dotwork',
  TattooStyle.japanese: 'japanese',
  TattooStyle.tribal: 'tribal',
  TattooStyle.newSchool: 'newSchool',
  TattooStyle.biomechanical: 'biomechanical',
  TattooStyle.minimalist: 'minimalist',
  TattooStyle.surrealism: 'surrealism',
  TattooStyle.ornamental: 'ornamental',
  TattooStyle.neoJapanese: 'neoJapanese',
  TattooStyle.celtic: 'celtic',
  TattooStyle.chicano: 'chicano',
  TattooStyle.abstract: 'abstract',
  TattooStyle.mandala: 'mandala',
  TattooStyle.fineline: 'fineline',
  TattooStyle.ignorantStyle: 'ignorantStyle',
};
