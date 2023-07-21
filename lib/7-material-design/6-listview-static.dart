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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Static Listview"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                leading: Icon(Icons.sunny),
                title: Text("Sun"),
                subtitle: Text("Sun subtitle"),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  print("clicked to Sun");
                },
              ),
              ListTile(
                leading: Icon(Icons.brightness_2),
                title: Text("Moon"),
                subtitle: Text("Moon subtitle"),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  print("clicked to Moon");
                },
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text("Star"),
                subtitle: Text("Star subtitle"),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  print("clicked to Star");
                },
              ),
              GestureDetector(
                onTap: () {print("Card is clicked");
                },
                child: Card(
                  child: SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Text("Card Design"),
                        Spacer(),
                        Icon(Icons.more_vert),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
