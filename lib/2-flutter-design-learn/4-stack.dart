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
        body: Stack(
          children: [
            Container(width: 100, height: 100, color: Colors.green),
            Container(width: 80, height: 80, color: Colors.red),
            Container(width: 50, height: 50, color: Colors.blue),
            Text("Hello"),
          ],
        )
      /*Container(
          color: Colors.greenAccent,
          child: Column(
            children: [
              Text("Hello"),
              Container(width: 80, height: 80, color: Colors.red),
              Container(width: 50, height: 50, color: Colors.blue),
              Container(width: 200, height: 200, color: Colors.green),
            ],
          ),
        )*/
      /* Row(
        children: [
          Text("Hello"),
          Container(width: 80,height: 80,color : Colors.red),
          Container(width: 50,height: 50,color : Colors.blue),
          Container(width: 100,height: 100,color : Colors.green),

        ],
      ),*/
    );
  }
}
