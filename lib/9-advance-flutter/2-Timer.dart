import 'dart:async';

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
  late Timer timer;
  int remainedSeconds = 10;

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
            children: [
              Text(
                "Remaning Time : $remainedSeconds seconds",
                style: TextStyle(fontSize: 30),
              ),
              ElevatedButton(
                child: Text("Start"),
                onPressed: () {
                  timer = Timer.periodic(Duration(seconds: 1), (timer) {
                    setState(() {
                      if (remainedSeconds < 1) {
                        remainedSeconds = 10;
                        timer.cancel();
                      } else {
                        remainedSeconds--;
                      }
                    });
                  });
                },
              )
            ],
          ),
        ));
  }
}
