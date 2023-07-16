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
      body: Align(
        alignment: Alignment.center,
        child: Container(
          color: Colors.greenAccent,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.red,
                child: const Align(
                  // alignment: Alignment.bottomCenter
                  // alignment: Alignment.topCenter
                  // alignment: Alignment.topLeft
                    alignment: Alignment.bottomRight,
                    child: Text("Hello")),
              ),
              SizedBox(
                  width: 75, height: 150, child: Container(color: Colors.grey,child: const Text("Here is added as empty box"))),
              SizedBox(
                  width: 120,
                  height: 120,
                  child: Container(width: 50, height: 50, color: Colors.blue,child: const Text("Container is resized with SizedBox"),)),
              Container(width: 100, height: 100, color: Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}
