import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Page1.dart';

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
  Future<void> getData() async {
    var sp = await SharedPreferences.getInstance();
    sp.setString("name", "Ahmet");
    sp.setInt("age", 24);
    sp.setDouble("height", 1.75);
    sp.setBool("isSingle", true);
    var friendList = <String>[];
    friendList.add("Emin");
    friendList.add("Omer");
    sp.setStringList("friendList", friendList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Title2"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              getData();
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Page1()));
            },
            child: Text("Go To Page 1"),
          ),
        ));
  }
}
