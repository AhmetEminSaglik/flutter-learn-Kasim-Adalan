import 'package:auto_orientation/auto_orientation.dart';
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

class StalessWidgetDemo extends StatelessWidget {
  const StalessWidgetDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            ElevatedButton(onPressed: (){
              AutoOrientation.landscapeAutoMode();
            }, child: const Text("lands uto  --> right or left ")),
            ElevatedButton(onPressed: (){
              AutoOrientation.landscapeRightMode();
            }, child: const Text("lands right --> right")),
            ElevatedButton(onPressed: (){
              AutoOrientation.landscapeLeftMode();
            }, child: const Text("lands left --> left")),
            ElevatedButton(onPressed: (){
              AutoOrientation.fullAutoMode();
            }, child: const Text("Full Auto  --> left up right")),
            ElevatedButton(onPressed: (){
              AutoOrientation.portraitDownMode();
            }, child: const Text("potrait down --> down")),
            ElevatedButton(onPressed: (){
              AutoOrientation.portraitAutoMode();
            }, child: const Text("potrait auto")),
            ElevatedButton(onPressed: (){
              AutoOrientation.portraitUpMode();
            }, child: const Text("potrait  up")),
          ],
        ));
  }
}
