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
          title: Text("PopUp Menu"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PopupMenuButton(
                child: Icon(Icons.open_in_new),
                itemBuilder: (context) => [
                  PopupMenuItem(
                      value: 1,
                      child: Text(
                        "Delete",
                        style: TextStyle(color: Colors.red),
                      )),
                  PopupMenuItem(
                      value: 2,
                      child: Text(
                        "Update",
                        style: TextStyle(color: Colors.indigoAccent),
                      )),
                ],
                onCanceled: () {
                  print("Process is canceled");
                },
                onSelected: (menuItemValue) {
                  if (menuItemValue == 1) {
                  print("Delete process is selected");
                  } else if (menuItemValue == 2) {
                    print("Update process is selected");
                  }
                },
              )
            ],
          ),
        ));
  }
}
