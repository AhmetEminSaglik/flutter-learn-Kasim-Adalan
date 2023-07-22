import 'dart:convert';

import 'package:dart_demo/10-Json/1-single-object/Messages.dart';
import 'package:flutter/material.dart';

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
  void messageParse() {
    String singleData =
        '{ "messages" : {"message_code": 1, "message_content" : "successful" } }';
    String multiData =
        '{ "messages" : [{"message_code": 1, "message_content" : "successful" },'
        '{"message_code": 2, "message_content" : "hey bro" }] }';
    var jsonData = json.decode(singleData);
    var jsonObject = jsonData["messages"];
    var message = Messages.fromJson(jsonObject);
    print("Message code  :${message.message_code}");
    print("Message content  :${message.message_content}");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    messageParse();
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
