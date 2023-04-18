// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_artist_works_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetArtistWorksResponse _$$_GetArtistWorksResponseFromJson(Map json) =>
    _$_GetArtistWorksResponse(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => WorkItem.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(Map<String, dynamic>.from(json['meta'] as Map)),
    );

Map<String, dynamic> _$$_GetArtistWorksResponseToJson(
    _$_GetArtistWorksResponse instance) {
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

_$_WorkItem _$$_WorkItemFromJson(Map json) => _$_WorkItem(
      id: json['id'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      customerId: json['customerId'] as int?,
      title: json['title'] as String?,
      start: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
      end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
      color: json['color'] as String?,
      info: json['info'] as String?,
      notification: json['notification'] as bool?,
      done: json['done'] as bool?,
      workEvidence: json['workEvidence'] == null
          ? null
          : WorkEvidence.fromJson(
              Map<String, dynamic>.from(json['workEvidence'] as Map)),
      deletedAt: json['deletedAt'],
      review: json['review'] == null
          ? null
          : Review.fromJson(Map<String, dynamic>.from(json['review'] as Map)),
    );

Map<String, dynamic> _$$_WorkItemToJson(_$_WorkItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('customerId', instance.customerId);
  writeNotNull('title', instance.title);
  writeNotNull('start', instance.start?.toIso8601String());
  writeNotNull('end', instance.end?.toIso8601String());
  writeNotNull('color', instance.color);
  writeNotNull('info', instance.info);
  writeNotNull('notification', instance.notification);
  writeNotNull('done', instance.done);
  writeNotNull('workEvidence', instance.workEvidence?.toJson());
  writeNotNull('deletedAt', instance.deletedAt);
  writeNotNull('review', instance.review?.toJson());
  return val;
}

_$_Review _$$_ReviewFromJson(Map json) => _$_Review(
      id: json['id'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
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
      customerReviewDetail: json['customerReviewDetail'] == null
          ? null
          : CustomerReviewDetail.fromJson(
              Map<String, dynamic>.from(json['customerReviewDetail'] as Map)),
    );

Map<String, dynamic> _$$_ReviewToJson(_$_Review instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('artistId', instance.artistId);
  writeNotNull('eventId', instance.eventId);
  writeNotNull('value', instance.value);
  writeNotNull('header', instance.header);
  writeNotNull('content', instance.content);
  writeNotNull('reviewReactions', instance.reviewReactions?.toJson());
  writeNotNull('createdBy', instance.createdBy);
  writeNotNull('displayName', instance.displayName);
  writeNotNull('isRated', instance.isRated);
  writeNotNull('customerReviewDetail', instance.customerReviewDetail?.toJson());
  return val;
}

_$_CustomerReviewDetail _$$_CustomerReviewDetailFromJson(Map json) =>
    _$_CustomerReviewDetail(
      reviewReactionId: json['reviewReactionId'] as int?,
      liked: json['liked'] as bool?,
      disliked: json['disliked'] as bool?,
    );

Map<String, dynamic> _$$_CustomerReviewDetailToJson(
    _$_CustomerReviewDetail instance) {
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

_$_WorkEvidence _$$_WorkEvidenceFromJson(Map json) => _$_WorkEvidence(
      count: json['count'] as int?,
      metadata: (json['metadata'] as List<dynamic>?)
          ?.map((e) => Metadatum.fromJson(Map<String, dynamic>.from(e as Map)))
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

_$_Metadatum _$$_MetadatumFromJson(Map json) => _$_Metadatum(
      url: json['url'] as String?,
      size: json['size'] as int?,
      type: json['type'] as String?,
      encoding: json['encoding'] as String?,
      position: json['position'] as int?,
      fieldname: json['fieldname'] as String?,
      originalname: json['originalname'] as String?,
    );

Map<String, dynamic> _$$_MetadatumToJson(_$_Metadatum instance) {
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
