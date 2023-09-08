<<<<<<< HEAD
class Home{
=======
import 'dart:convert';

class Home{
  final String id;
  final String username;
  final String postname;
  final int user_id;
  final String title;
  final String imageurl;
  final String category;

  Home({
    required this.id,
    required this.username,
    required this.postname,
    required this.user_id,
    required this.imageurl,
    required this.title,
    required this.category,
});

  Map<String,dynamic> toMap(){
    return {
      'id':id,
      'username':username,
      'postname':postname,
      'user_id':user_id,
       'imageurl':imageurl,
      'title':title,
      'category':category,
    };
  }

  factory Home.fromMap(Map<String,dynamic> map) {
    return Home(id: map['_id'] ?? '',
        username: map['username'] ?? '',
        postname: map['postname']?? '',
        user_id: map['user_id'] ?? '',
        imageurl: map['imageurl'] ?? '',
        title: map['title'] ?? '',
        category: map['category'] ?? '');
  }

  String toJson() => jsonEncode(toMap());
  factory Home.fromJson(String source)  => Home.fromMap(json.decode(source));



>>>>>>> f3a953c32e7b93b9624c7a847c88c2708e18cd32


}