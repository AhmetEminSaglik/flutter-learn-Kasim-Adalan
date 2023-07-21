import 'package:flutter/material.dart';

import 'Page1.dart';
import 'Page2.dart';
import 'Page3.dart';

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
  Future<List<String>> getData() async {
    List<String> list = [];
    for (int i = 0; i < 10; i++) {
      list.add("Number : ${i + 1} ");
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black26,//Theme.of(context).colorScheme.inversePrimary,
            title: Text("Tabs Example"),
            bottom: TabBar(
              tabs: [
                Tab(text: "First"),
                Tab(
                    icon: Icon(
                  Icons.looks_two,
                  color: Colors.cyanAccent,
                )),
                Tab(
                  text: "Third",
                  icon: Icon(Icons.looks_3),
                ),
              ],
              indicatorColor: Colors.pink,
            ),
          ),
          body: TabBarView(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Page1(),
              Page2(),
              Page3(),
            ],
          )),
    );
  }
}
