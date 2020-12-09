import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'medium_post.g.dart';

@JsonSerializable()
class MediumPost {
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'items')
  final List<ItemMediumPost> items;

  MediumPost({
    @required this.status,
    @required this.items,
  });

  factory MediumPost.fromJson(Map<String, dynamic> json) => _$MediumPostFromJson(json);

  Map<String, dynamic> toJson() => _$MediumPostToJson(this);

  @override
  String toString() {
    return 'MediumPost{status: $status, items: $items}';
  }
}

@JsonSerializable()
class ItemMediumPost {
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'pubDate')
  final String publishDate;
  @JsonKey(name: 'link')
  final String link;
  @JsonKey(name: 'categories')
  final List<String> categories;

  ItemMediumPost({
    @required this.title,
    @required this.publishDate,
    @required this.link,
    @required this.categories,
  });

  factory ItemMediumPost.fromJson(Map<String, dynamic> json) => _$ItemMediumPostFromJson(json);

  Map<String, dynamic> toJson() => _$ItemMediumPostToJson(this);

  @override
  String toString() {
    return 'ItemMediumPost{title: $title, publishDate: $publishDate, link: $link, categories: $categories}';
  }
}