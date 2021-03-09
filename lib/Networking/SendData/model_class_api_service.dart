class NewAlbum {
  NewAlbum({this.id, this.userId, this.title});
  final int id;
  final int userId;
  final String title;

  factory NewAlbum.fromJson(Map<String, dynamic> json) {
    return NewAlbum(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
    );
  }
}
