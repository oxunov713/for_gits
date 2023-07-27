class PhotosModel {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  const PhotosModel({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });
  factory PhotosModel.fromJson(Map<String, Object?> json) => PhotosModel(
        albumId: json['albumId'] as int,
        id: json['id'] as int,
        title: json['title'] as String,
        url: json['url'] as String,
        thumbnailUrl: json['thumbnailUrl'] as String,
      );

  @override
  String toString() =>
      "PhotosModel(albumId: $albumId\n, id: $id\n, title: $title\n, url: $url\n, thumbnailUrl: $thumbnailUrl)";
}
