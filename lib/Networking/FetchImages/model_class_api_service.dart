class Photos {
  Photos({
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
  });
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  factory Photos.fromJson(Map<String, dynamic> json) {
    return Photos(
      albumId: json['albumId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );
  }
}
