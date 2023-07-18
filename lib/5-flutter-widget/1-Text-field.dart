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
  var tfController = TextEditingController();
  String inputData = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("1-Text-field"),
        ),
        body: Column(
          children: [
            TextField(
                controller: tfController,
                decoration: InputDecoration(
                  hintText: "Type Here",
                )),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  inputData = tfController.text;
                  print("value : ${tfController.value}");
                });
              },
              child: Text("Get Data"),
            ),
            Text("Input Data : $inputData"),
          ],
        ));
  }
}
