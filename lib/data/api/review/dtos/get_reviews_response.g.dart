// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_reviews_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetReviewsResponseImpl _$$GetReviewsResponseImplFromJson(Map json) =>
    _$GetReviewsResponseImpl(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ReviewItem.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(Map<String, dynamic>.from(json['meta'] as Map)),
    );

Map<String, dynamic> _$$GetReviewsResponseImplToJson(
    _$GetReviewsResponseImpl instance) {
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

_$MetaImpl _$$MetaImplFromJson(Map json) => _$MetaImpl(
      totalItems: (json['totalItems'] as num?)?.toInt(),
      itemCount: (json['itemCount'] as num?)?.toInt(),
      itemsPerPage: (json['itemsPerPage'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      currentPage: (json['currentPage'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) {
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

_$ReviewItemImpl _$$ReviewItemImplFromJson(Map json) => _$ReviewItemImpl(
      id: (json['id'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      artistId: (json['artistId'] as num?)?.toInt(),
      eventId: (json['eventId'] as num?)?.toInt(),
      value: (json['value'] as num?)?.toInt(),
      header: json['header'] as String?,
      content: json['content'] as String?,
      reviewReactions: json['reviewReactions'] == null
          ? null
          : ReviewReactions.fromJson(
              Map<String, dynamic>.from(json['reviewReactions'] as Map)),
      createdBy: (json['createdBy'] as num?)?.toInt(),
      displayName: json['displayName'] as String?,
      isRated: json['isRated'] as bool?,
      customerReactionDetail: json['customerReactionDetail'] == null
          ? null
          : CustomerReactionDetail.fromJson(
              Map<String, dynamic>.from(json['customerReactionDetail'] as Map)),
    );

Map<String, dynamic> _$$ReviewItemImplToJson(_$ReviewItemImpl instance) {
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

_$CustomerReactionDetailImpl _$$CustomerReactionDetailImplFromJson(Map json) =>
    _$CustomerReactionDetailImpl(
      reviewReactionId: (json['reviewReactionId'] as num?)?.toInt(),
      liked: json['liked'] as bool?,
      disliked: json['disliked'] as bool?,
    );

Map<String, dynamic> _$$CustomerReactionDetailImplToJson(
    _$CustomerReactionDetailImpl instance) {
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

_$ReviewReactionsImpl _$$ReviewReactionsImplFromJson(Map json) =>
    _$ReviewReactionsImpl(
      likes: (json['likes'] as num?)?.toInt(),
      dislikes: (json['dislikes'] as num?)?.toInt(),
      offs: (json['offs'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ReviewReactionsImplToJson(
    _$ReviewReactionsImpl instance) {
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
