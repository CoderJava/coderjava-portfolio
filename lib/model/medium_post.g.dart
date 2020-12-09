// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medium_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediumPost _$MediumPostFromJson(Map<String, dynamic> json) {
  return MediumPost(
    status: json['status'] as String,
    items: (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : ItemMediumPost.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MediumPostToJson(MediumPost instance) =>
    <String, dynamic>{
      'status': instance.status,
      'items': instance.items,
    };

ItemMediumPost _$ItemMediumPostFromJson(Map<String, dynamic> json) {
  return ItemMediumPost(
    title: json['title'] as String,
    publishDate: json['pubDate'] as String,
    link: json['link'] as String,
    categories: (json['categories'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$ItemMediumPostToJson(ItemMediumPost instance) =>
    <String, dynamic>{
      'title': instance.title,
      'pubDate': instance.publishDate,
      'link': instance.link,
      'categories': instance.categories,
    };
