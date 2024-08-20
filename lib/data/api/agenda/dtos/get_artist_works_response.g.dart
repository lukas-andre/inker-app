// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_artist_works_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetArtistWorksResponseImpl _$$GetArtistWorksResponseImplFromJson(Map json) =>
    _$GetArtistWorksResponseImpl(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => WorkItem.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(Map<String, dynamic>.from(json['meta'] as Map)),
    );

Map<String, dynamic> _$$GetArtistWorksResponseImplToJson(
    _$GetArtistWorksResponseImpl instance) {
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

_$WorkItemImpl _$$WorkItemImplFromJson(Map json) => _$WorkItemImpl(
      id: (json['id'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      customerId: (json['customerId'] as num?)?.toInt(),
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

Map<String, dynamic> _$$WorkItemImplToJson(_$WorkItemImpl instance) {
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

_$ReviewImpl _$$ReviewImplFromJson(Map json) => _$ReviewImpl(
      id: (json['id'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
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
      customerReviewDetail: json['customerReviewDetail'] == null
          ? null
          : CustomerReviewDetail.fromJson(
              Map<String, dynamic>.from(json['customerReviewDetail'] as Map)),
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) {
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

_$CustomerReviewDetailImpl _$$CustomerReviewDetailImplFromJson(Map json) =>
    _$CustomerReviewDetailImpl(
      reviewReactionId: (json['reviewReactionId'] as num?)?.toInt(),
      liked: json['liked'] as bool?,
      disliked: json['disliked'] as bool?,
    );

Map<String, dynamic> _$$CustomerReviewDetailImplToJson(
    _$CustomerReviewDetailImpl instance) {
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

_$WorkEvidenceImpl _$$WorkEvidenceImplFromJson(Map json) => _$WorkEvidenceImpl(
      count: (json['count'] as num?)?.toInt(),
      metadata: (json['metadata'] as List<dynamic>?)
          ?.map((e) => Metadatum.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$WorkEvidenceImplToJson(_$WorkEvidenceImpl instance) {
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

_$MetadatumImpl _$$MetadatumImplFromJson(Map json) => _$MetadatumImpl(
      url: json['url'] as String?,
      size: (json['size'] as num?)?.toInt(),
      type: json['type'] as String?,
      encoding: json['encoding'] as String?,
      position: (json['position'] as num?)?.toInt(),
      fieldname: json['fieldname'] as String?,
      originalname: json['originalname'] as String?,
    );

Map<String, dynamic> _$$MetadatumImplToJson(_$MetadatumImpl instance) {
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
