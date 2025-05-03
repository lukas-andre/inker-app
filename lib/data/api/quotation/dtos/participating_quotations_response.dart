import 'package:inker_studio/domain/models/quotation/quotation.dart';

class ListParticipatingQuotationsResDto {
  final List<ParticipatingQuotationItemDto> items;
  final int total;

  ListParticipatingQuotationsResDto({
    required this.items,
    required this.total,
  });

  factory ListParticipatingQuotationsResDto.fromJson(Map<String, dynamic> json) {
    return ListParticipatingQuotationsResDto(
      items: (json['items'] as List)
          .map((item) => ParticipatingQuotationItemDto.fromJson(item))
          .toList(),
      total: json['total'] as int,
    );
  }
}

class ParticipatingQuotationItemDto {
  final String id;
  final String quotationId;
  final String artistId;
  final Money? estimatedCost;
  final int? estimatedDuration;
  final String? message;
  final String status;
  final DateTime createdAt;
  final DateTime updatedAt;
  final List<OfferMessageDto> messages;
  final ArtistDto artist;
  final QuotationBriefDto quotation;
  final CustomerDto customer;

  ParticipatingQuotationItemDto({
    required this.id,
    required this.quotationId,
    required this.artistId,
    this.estimatedCost,
    this.estimatedDuration,
    this.message,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.messages,
    required this.artist,
    required this.quotation,
    required this.customer,
  });

  factory ParticipatingQuotationItemDto.fromJson(Map<String, dynamic> json) {
    return ParticipatingQuotationItemDto(
      id: json['id'] as String,
      quotationId: json['quotationId'] as String,
      artistId: json['artistId'] as String,
      estimatedCost: json['estimatedCost'] != null
          ? Money.fromJson(json['estimatedCost'])
          : null,
      estimatedDuration: json['estimatedDuration'] as int?,
      message: json['message'] as String?,
      status: json['status'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      messages: (json['messages'] as List)
          .map((message) => OfferMessageDto.fromJson(message))
          .toList(),
      artist: ArtistDto.fromJson(json['artist']),
      quotation: QuotationBriefDto.fromJson(json['quotation']),
      customer: CustomerDto.fromJson(json['customer']),
    );
  }
}

class OfferMessageDto {
  final String message;
  final String senderId;
  final DateTime timestamp;
  final String senderType;
  final String? imageUrl;

  OfferMessageDto({
    required this.message,
    required this.senderId,
    required this.timestamp,
    required this.senderType,
    this.imageUrl,
  });

  factory OfferMessageDto.fromJson(Map<String, dynamic> json) {
    return OfferMessageDto(
      message: json['message'] as String,
      senderId: json['senderId'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      senderType: json['senderType'] as String,
      imageUrl: json['imageUrl'] as String?,
    );
  }
}

class ArtistDto {
  final String id;
  final String userId;
  final String username;
  final String firstName;
  final String lastName;
  final String? profileThumbnail;
  final String rating;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String? shortDescription;
  final String? studioPhoto;

  ArtistDto({
    required this.id,
    required this.userId,
    required this.username,
    required this.firstName,
    required this.lastName,
    this.profileThumbnail,
    required this.rating,
    required this.createdAt,
    required this.updatedAt,
    this.shortDescription,
    this.studioPhoto,
  });

  factory ArtistDto.fromJson(Map<String, dynamic> json) {
    return ArtistDto(
      id: json['id'] as String,
      userId: json['userId'] as String,
      username: json['username'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      profileThumbnail: json['profileThumbnail'] as String?,
      rating: json['rating'].toString(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      shortDescription: json['shortDescription'] as String?,
      studioPhoto: json['studioPhoto'] as String?,
    );
  }
}

class QuotationBriefDto {
  final String id;
  final String description;
  final String status;
  final String type;
  final List<String>? referenceImages;
  final DateTime createdAt;
  final DateTime updatedAt;

  QuotationBriefDto({
    required this.id,
    required this.description,
    required this.status,
    required this.type,
    this.referenceImages,
    required this.createdAt,
    required this.updatedAt,
  });

  factory QuotationBriefDto.fromJson(Map<String, dynamic> json) {
    return QuotationBriefDto(
      id: json['id'] as String,
      description: json['description'] as String,
      status: json['status'] as String,
      type: json['type'] as String,
      referenceImages: json['referenceImages'] != null
          ? (json['referenceImages'] as List).cast<String>()
          : null,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );
  }
}

class CustomerDto {
  final String id;
  final String userId;
  final String firstName;
  final String lastName;
  final String? profileThumbnail;
  final String? contactEmail;
  final String? contactPhoneNumber;
  final dynamic follows;
  final int rating;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String? shortDescription;

  CustomerDto({
    required this.id,
    required this.userId,
    required this.firstName,
    required this.lastName,
    this.profileThumbnail,
    this.contactEmail,
    this.contactPhoneNumber,
    this.follows,
    required this.rating,
    required this.createdAt,
    required this.updatedAt,
    this.shortDescription,
  });

  factory CustomerDto.fromJson(Map<String, dynamic> json) {
    return CustomerDto(
      id: json['id'] as String,
      userId: json['userId'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      profileThumbnail: json['profileThumbnail'] as String?,
      contactEmail: json['contactEmail'] as String?,
      contactPhoneNumber: json['contactPhoneNumber'] as String?,
      follows: json['follows'],
      rating: json['rating'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      shortDescription: json['shortDescription'] as String?,
    );
  }
} 