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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlueSquare(),
              const SizedBox(height: 20),
              const RedSquare(),
              const SizedBox(height: 20),
              CustomText("hello ", 130)
            ],
          ),
        ));
  }
}

class BlueSquare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(width: 50, height: 50, color: Colors.blue);
  }
}

class RedSquare extends StatelessWidget {
  const RedSquare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: 50, height: 50, color: Colors.red);
  }
}

class CustomText extends StatelessWidget {
  String message;
  double fontSize;

  CustomText(this.message, this.fontSize);

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: TextStyle(fontSize: fontSize),
    );
  }
}
