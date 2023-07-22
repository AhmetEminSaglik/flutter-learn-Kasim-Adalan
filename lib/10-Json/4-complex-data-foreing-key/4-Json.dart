import 'dart:convert';

import 'package:dart_demo/10-Json/1-single-object/Messages.dart';
import 'package:dart_demo/10-Json/3-complex-data/UserDataResult.dart';
import 'package:dart_demo/10-Json/4-complex-data-foreing-key/MovieDataResult.dart';
import 'package:flutter/material.dart';

import 'Movie.dart';

//https://www.udemy.com/course/flutter-ile-uygulama-gelistirme-kursu-android-ios/learn/lecture/23728946#overview
// to delete all comment  lines --> ctrl + f -->//.* --> delete all comments
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp

  ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
/*
  void parseUsers() {
    String data =
        ' { "users" : [ { "id" : 1, "name" : "Ahmet Emin", "phone" : "0101 101 01 01"} ,{ "id" : 2, "name" : "Emin", "phone" : "22222222222"} ] }';
    var jsonData = json.decode(data);
    var jsonArray = jsonData["users"] as List;
    List<User> userList =
        jsonArray.map((JsonArray) => User.fromJson(JsonArray)).toList();

    for (User tmp in userList) {
      print("user : $tmp");
    }
  }
*/
  /*void parseUserDataResult() {
    String data =
        ' { "success":1, "users" : [{"id":1,"name":"Muhammed", "phone":"571 632 40 40" },{"id":2,"name":"AES", "phone":"111 111 11 11" }]}';
    var jsonData = json.decode(data);
    var userDataResult = UserDataResult.fromJson(jsonData);
    print("Success : ${userDataResult.success}");
    List<User> userList = userDataResult.userList;

    for (var tmp in userList) {
      print("user : $tmp");
    }
  }*/

  void parseMovieDataResult() {
    String data = ' { "success" :1 , "movies":['
        '{"id":5,"name":"Interstellar","year":"2015", "image": "interstellar.png", "categories":[{"id":3,"name":"science fiction"},{"id":4,"name":"Spaceflight"}],"director":{"id":15,"name":"Christopher Nolan"}},'
        '{"id":7,"name":"The Pianist","year":"2002", "image": "thepianist.png", "categories":[{"id":1,"name":"Drama"}],"director":{"id":16,"name":"Roman Polanski"}},'
        '{"id":9,"name":"Starwars","year":"1980", "image": "starwars.png", "categories":[{"id":3,"name":"science fiction"},{"id":4,"name":"Spaceflight"},{"id":7,"name":"Fiction about Telekinesis"}],"director":{"id":15,"name":"Irvin Kershner"}}'
        ']}';
    var jsonData = json.decode(data);
    var moviesDataResult = MovieDataResult.fromJson(jsonData);
    int succes = moviesDataResult.success;
    List<Movie> movieList = moviesDataResult.movieList;
    print("succes : $succes");
    for (var tmp in movieList){
      print("movie : $tmp");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    parseMovieDataResult();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,
          title: Text("Title2"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          ),
        ));
  }
}
