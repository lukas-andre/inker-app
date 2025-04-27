class UpdateTattooFavoriteDto {
  final String designId;
  final bool isFavorite;

  const UpdateTattooFavoriteDto({
    required this.designId,
    required this.isFavorite,
  });

  Map<String, dynamic> toJson() {
    return {
      'designId': designId,
      'isFavorite': isFavorite,
    };
  }
} 