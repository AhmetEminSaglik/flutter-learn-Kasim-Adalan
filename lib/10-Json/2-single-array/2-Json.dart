import 'dart:convert';

import 'package:dart_demo/10-Json/1-single-object/Messages.dart';
import 'package:flutter/material.dart';

import 'User.dart';

//https://www.udemy.com/course/flutter-ile-uygulama-gelistirme-kursu-android-ios/learn/lecture/23728946#overview
// to delete all comment  lines --> ctrl + f -->//.* --> delete all comments
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    parseUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
