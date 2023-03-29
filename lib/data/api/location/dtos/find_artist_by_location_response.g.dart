// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_artist_by_location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FindArtistByLocationResponse _$$_FindArtistByLocationResponseFromJson(
        Map json) =>
    _$_FindArtistByLocationResponse(
      id: json['id'] as int?,
      artistId: json['artistId'] as int?,
      name: json['name'] as String?,
      country: json['country'] as String?,
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      address3: json['address3'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
      addressType: json['addressType'] as String?,
      formattedAddress: json['formattedAddress'] as String?,
      city: json['city'] as String?,
      googlePlaceId: json['googlePlaceId'] as String?,
      distanceUnit: json['distanceUnit'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
      artist: json['artist'] == null
          ? null
          : Artist.fromJson(Map<String, dynamic>.from(json['artist'] as Map)),
    );

Map<String, dynamic> _$$_FindArtistByLocationResponseToJson(
    _$_FindArtistByLocationResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('artistId', instance.artistId);
  writeNotNull('name', instance.name);
  writeNotNull('country', instance.country);
  writeNotNull('address1', instance.address1);
  writeNotNull('address2', instance.address2);
  writeNotNull('address3', instance.address3);
  writeNotNull('lat', instance.lat);
  writeNotNull('lng', instance.lng);
  writeNotNull('addressType', instance.addressType);
  writeNotNull('formattedAddress', instance.formattedAddress);
  writeNotNull('city', instance.city);
  writeNotNull('googlePlaceId', instance.googlePlaceId);
  writeNotNull('distanceUnit', instance.distanceUnit);
  writeNotNull('distance', instance.distance);
  writeNotNull('artist', instance.artist?.toJson());
  return val;
}

_$_Artist _$$_ArtistFromJson(Map json) => _$_Artist(
      contact: json['contact'] == null
          ? null
          : Contact.fromJson(Map<String, dynamic>.from(json['contact'] as Map)),
      id: json['id'] as int?,
      username: json['username'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      studioPhoto: json['studioPhoto'] as String?,
      shortDescription: json['shortDescription'] as String?,
      profileThumbnail: json['profileThumbnail'] as String?,
      rating: json['rating'] as int?,
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) =>
              ReviewElement.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      review: json['review'] == null
          ? null
          : Review.fromJson(Map<String, dynamic>.from(json['review'] as Map)),
      recentWorks: (json['recentWorks'] as List<dynamic>?)
          ?.map((e) => RecentWork.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$_ArtistToJson(_$_Artist instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('contact', instance.contact?.toJson());
  writeNotNull('id', instance.id);
  writeNotNull('username', instance.username);
  writeNotNull('firstName', instance.firstName);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('studioPhoto', instance.studioPhoto);
  writeNotNull('shortDescription', instance.shortDescription);
  writeNotNull('profileThumbnail', instance.profileThumbnail);
  writeNotNull('rating', instance.rating);
  writeNotNull('reviews', instance.reviews?.map((e) => e.toJson()).toList());
  writeNotNull('review', instance.review?.toJson());
  writeNotNull(
      'recentWorks', instance.recentWorks?.map((e) => e.toJson()).toList());
  return val;
}

_$_Contact _$$_ContactFromJson(Map json) => _$_Contact(
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$_ContactToJson(_$_Contact instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('phone', instance.phone);
  writeNotNull('email', instance.email);
  writeNotNull('country', instance.country);
  return val;
}

_$_RecentWork _$$_RecentWorkFromJson(Map json) => _$_RecentWork(
      title: json['title'] as String?,
      customerId: json['customerId'] as int?,
      workEvidence: json['workEvidence'] == null
          ? null
          : WorkEvidence.fromJson(
              Map<String, dynamic>.from(json['workEvidence'] as Map)),
      agendaId: json['agendaId'] as int?,
      eventId: json['eventId'] as int?,
      artistId: json['artistId'] as int?,
    );

Map<String, dynamic> _$$_RecentWorkToJson(_$_RecentWork instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('customerId', instance.customerId);
  writeNotNull('workEvidence', instance.workEvidence?.toJson());
  writeNotNull('agendaId', instance.agendaId);
  writeNotNull('eventId', instance.eventId);
  writeNotNull('artistId', instance.artistId);
  return val;
}

_$_WorkEvidence _$$_WorkEvidenceFromJson(Map json) => _$_WorkEvidence(
      count: json['count'] as int?,
      metadata: (json['metadata'] as List<dynamic>?)
          ?.map((e) =>
              MultimediaMetadata.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$_WorkEvidenceToJson(_$_WorkEvidence instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  writeNotNull('metadata', instance.metadata?.map((e) => e.toJson()).toList());
  return val;
}

_$_MultimediaMetadata _$$_MultimediaMetadataFromJson(Map json) =>
    _$_MultimediaMetadata(
      url: json['url'] as String?,
      size: json['size'] as int?,
      type: json['type'] as String?,
      encoding: json['encoding'] as String?,
      position: json['position'] as int?,
      fieldname: json['fieldname'] as String?,
      originalname: json['originalname'] as String?,
    );

Map<String, dynamic> _$$_MultimediaMetadataToJson(
    _$_MultimediaMetadata instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('url', instance.url);
  writeNotNull('size', instance.size);
  writeNotNull('type', instance.type);
  writeNotNull('encoding', instance.encoding);
  writeNotNull('position', instance.position);
  writeNotNull('fieldname', instance.fieldname);
  writeNotNull('originalname', instance.originalname);
  return val;
}

_$_Review _$$_ReviewFromJson(Map json) => _$_Review(
      artistId: json['artistId'] as int?,
      value: (json['value'] as num?)?.toDouble(),
      detail: (json['detail'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e as int),
      ),
      count: json['count'] as int?,
    );

Map<String, dynamic> _$$_ReviewToJson(_$_Review instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('artistId', instance.artistId);
  writeNotNull('value', instance.value);
  writeNotNull('detail', instance.detail);
  writeNotNull('count', instance.count);
  return val;
}

_$_ReviewElement _$$_ReviewElementFromJson(Map json) => _$_ReviewElement(
      id: json['id'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      artistId: json['artistId'] as int?,
      eventId: json['eventId'] as int?,
      value: json['value'] as int?,
      header: json['header'] as String?,
      content: json['content'] as String?,
      reviewReactions: json['reviewReactions'] == null
          ? null
          : ReviewReactions.fromJson(
              Map<String, dynamic>.from(json['reviewReactions'] as Map)),
      createdBy: json['createdBy'] as int?,
      displayName: json['displayName'] as String?,
      isRated: json['isRated'] as bool?,
      customerReactionDetail: json['customerReactionDetail'] == null
          ? null
          : CustomerReactionDetail.fromJson(
              Map<String, dynamic>.from(json['customerReactionDetail'] as Map)),
    );

Map<String, dynamic> _$$_ReviewElementToJson(_$_ReviewElement instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('artistId', instance.artistId);
  writeNotNull('eventId', instance.eventId);
  writeNotNull('value', instance.value);
  writeNotNull('header', instance.header);
  writeNotNull('content', instance.content);
  writeNotNull('reviewReactions', instance.reviewReactions?.toJson());
  writeNotNull('createdBy', instance.createdBy);
  writeNotNull('displayName', instance.displayName);
  writeNotNull('isRated', instance.isRated);
  writeNotNull(
      'customerReactionDetail', instance.customerReactionDetail?.toJson());
  return val;
}

_$_CustomerReactionDetail _$$_CustomerReactionDetailFromJson(Map json) =>
    _$_CustomerReactionDetail(
      reviewReactionId: json['reviewReactionId'] as int?,
      liked: json['liked'] as bool?,
      disliked: json['disliked'] as bool?,
    );

Map<String, dynamic> _$$_CustomerReactionDetailToJson(
    _$_CustomerReactionDetail instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('reviewReactionId', instance.reviewReactionId);
  writeNotNull('liked', instance.liked);
  writeNotNull('disliked', instance.disliked);
  return val;
}

_$_ReviewReactions _$$_ReviewReactionsFromJson(Map json) => _$_ReviewReactions(
      likes: json['likes'] as int?,
      dislikes: json['dislikes'] as int?,
    );

Map<String, dynamic> _$$_ReviewReactionsToJson(_$_ReviewReactions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('likes', instance.likes);
  writeNotNull('dislikes', instance.dislikes);
  return val;
}
