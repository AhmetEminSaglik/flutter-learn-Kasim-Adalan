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
          title: Text("3-Text-field-Customization"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                  controller: tfController,
                  obscureText: true,
                  // like password
                  keyboardType: TextInputType.datetime,
                  textAlign: TextAlign.center,
                  maxLength: 4,
                  style: TextStyle(color: Colors.green, fontSize: 40),
                  decoration: InputDecoration(
                      hintText: "Type Here",
                      hintStyle: TextStyle(color: Colors.pink, fontSize: 40),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.red, fontSize: 40),
                      filled: true,
                      fillColor: Colors.black,
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      prefixIcon: Icon(
                        Icons.print,
                        color: Colors.pink,
                        size: 35,
                      ))),
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
          ),
        ));
  }
}
