import 'package:flutter/material.dart';

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
  String inputData = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(" Elevated Button"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  print("Clicked Elevated Button");
                },
                child: Text(
                  "child",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  shadowColor: Colors.black,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      side: BorderSide(
                          color: Colors.red, strokeAlign: 4, width: 5)),
                ),
              ),
              Spacer(),
              TextButton(
                  onPressed: () {
                    print("Clicked Text Button");
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.teal,
                      shadowColor: Colors.black,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          side: BorderSide(
                              color: Colors.red, strokeAlign: 4, width: 5))),
                  child: Text(
                    "Text Button",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))
            ],
          ),
        ));
  }
}
