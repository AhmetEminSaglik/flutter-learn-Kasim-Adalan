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
  var _toggleConditions = [false, true, false];
  int _selectedToggleIndex = 0;

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
              ToggleButtons(
                children: [
                  Icon(Icons.looks_one,/* color: Colors.pink, size: 35*/),
                  Icon(Icons.looks_two, /*color: Colors.blue*/),
                  Icon(Icons.looks_3, /*color: Colors.deepOrange*/),
                ],
                isSelected: _toggleConditions,
                color: Colors.black,
                selectedColor: Colors.green,
                fillColor: Colors.orangeAccent,
                // splashColor: Colors.lightGreenAccent,
                onPressed: (int selectedItem) {
                  _selectedToggleIndex = selectedItem;
                  print("${selectedItem + 1}. toggle is selected");
                  setState(() {
                    _toggleConditions[selectedItem] =
                        !_toggleConditions[selectedItem];
                  });
                },
              )
            ],
          ),
        ));
  }
}
