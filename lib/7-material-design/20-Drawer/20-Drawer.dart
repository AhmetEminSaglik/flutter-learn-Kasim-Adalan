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
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.cyan,
          primary: Colors.cyan,
          secondary: Colors.white,
        ),
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
  var pageList = [Page1(), Page2(), Page3()];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation"),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: pageList[selectedIndex],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                child: Text(
                  "Header Design",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 30,
                  ),
                ),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary)),
            ListTile(
              title: Text("Page 1"),
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                  Navigator.pop(context);
                });
              },
            ),
            ListTile(
              title: Text("Page 2"),
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                  Navigator.pop(context);
                });
              },
            ),
            ListTile(
              title: Text("Page 3"),
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                  Navigator.pop(context);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
