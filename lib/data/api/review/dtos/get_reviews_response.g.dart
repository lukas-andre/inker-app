// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_reviews_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetReviewsResponse _$$_GetReviewsResponseFromJson(Map json) =>
    _$_GetReviewsResponse(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ReviewItem.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(Map<String, dynamic>.from(json['meta'] as Map)),
    );

Map<String, dynamic> _$$_GetReviewsResponseToJson(
    _$_GetReviewsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  writeNotNull('meta', instance.meta?.toJson());
  return val;
}

_$_Meta _$$_MetaFromJson(Map json) => _$_Meta(
      totalItems: json['totalItems'] as int?,
      itemCount: json['itemCount'] as int?,
      itemsPerPage: json['itemsPerPage'] as int?,
      totalPages: json['totalPages'] as int?,
      currentPage: json['currentPage'] as int?,
    );

Map<String, dynamic> _$$_MetaToJson(_$_Meta instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('totalItems', instance.totalItems);
  writeNotNull('itemCount', instance.itemCount);
  writeNotNull('itemsPerPage', instance.itemsPerPage);
  writeNotNull('totalPages', instance.totalPages);
  writeNotNull('currentPage', instance.currentPage);
  return val;
}

_$_ReviewItem _$$_ReviewItemFromJson(Map json) => _$_ReviewItem(
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

Map<String, dynamic> _$$_ReviewItemToJson(_$_ReviewItem instance) {
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
      offs: json['offs'] as int?,
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
  writeNotNull('offs', instance.offs);
  return val;
}
