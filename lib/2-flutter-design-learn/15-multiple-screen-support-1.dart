import 'package:flutter/material.dart';

//https://www.udemy.com/course/flutter-ile-uygulama-gelistirme-kursu-android-ios/learn/lecture/23728414#overview
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
      home: MyHomePage(title: "Hello Flutter"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // when app page starts, this method is excecuted
    super.initState();
    print("-->App is started");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints contraints) {
            if (contraints.maxWidth <600) {
              //this is phone size
              return PhoneDesign();
            } else {
              return TabletDesign();
            }
          },
        ));
  }
}

class TabletDesign extends StatelessWidget {
  const TabletDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("images/stevejobs@2x.png"),
        const Text(
          "Steve Jobs",
          style: TextStyle(fontSize: 30),
        )
      ],
    );
  }
}

class PhoneDesign extends StatelessWidget {
  const PhoneDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("images/stevejobs@1x.png"),
        const Text(
          "Steve Jobs",
          style: TextStyle(fontSize: 20),
        )
      ],
    );
  }
}
