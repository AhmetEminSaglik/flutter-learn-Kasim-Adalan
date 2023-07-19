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
  int radioValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Radio Button"),
        ),
        body: Column(
          children: [
            RadioListTile(
              title: Text("Galatasary"),
              value: 1,
              groupValue: radioValue,
              onChanged: (int? value) {
                setState(() {
                  radioValue = value!;
                });
                print("Galatasary is selected");
              },
            ),
            RadioListTile(
              title: Text("Fenerbahce"),
              value: 2,
              groupValue: radioValue,
              onChanged: (int? value) {
                setState(() {
                  radioValue = value!;
                });
                print("Fenerbahce is selected");
              },
            ),
            RadioListTile(
              title: Text("Besiktas"),
              value: 3,
              groupValue: radioValue,
              onChanged: (int? value) {
                setState(() {
                  radioValue = value!;
                });
                print("Besiktas is selected");
              },
            ),
           /* RadioListTile(
              title: Text("none"),
              value: -1,
              groupValue: radioValue,
              onChanged: (int? value) {
                setState(() {
                  radioValue = value!;
                });
                print("none of them is selected");
              },
            ),*/
          ],
        ));
  }
}
