class Album {
  Album({this.userID, this.id, this.title});

  final int userID;
  final int id;
  final String title;

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userID: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}
