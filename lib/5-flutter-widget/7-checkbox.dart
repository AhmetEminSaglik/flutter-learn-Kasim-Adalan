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
  bool javaCondtion = false;
  bool flutterCondtion = false;
  final _titleColorSelected = Colors.orangeAccent;
  final _titleColorStandart = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Checkbox"),
        ),
        body: Column(
          children: [
            CheckboxListTile(
              title: Text("Java"),
              value: javaCondtion,
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: Colors.blueAccent,
              // selectedTileColor: Colors.black,
              tileColor:
                  javaCondtion ? _titleColorSelected : _titleColorStandart,
              onChanged: (bool? condition) {
                print("Java is selected : $condition");
                setState(() {
                  // _updateTitleColor(condition!);
                  javaCondtion = condition!;
                });
              },
            ),
            CheckboxListTile(
              title: Text("Flutter"),
              value: flutterCondtion,
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: Colors.green,
              tileColor:
                  flutterCondtion ? _titleColorSelected : _titleColorStandart,
              onChanged: (bool? condition) {
                print("Flutter is selected : $condition");
                setState(() {
                  flutterCondtion = condition!;
                });
              },
            )
          ],
        ));
  }

  void _updateJavaCondtion() {}
}
