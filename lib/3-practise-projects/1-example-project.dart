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
      home:
          const _ExampleProjectHomePage(), //MyHomePage(title: "Hello Flutter"),
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
        body: Container());
  }
}

class _ExampleProjectHomePage extends StatelessWidget {
  const _ExampleProjectHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenWidth = screenInfo.size.width;
    final double screenHeight = screenInfo.size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Example Project",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: screenHeight / 100, bottom: screenHeight / 100),
            child: SizedBox(
                width: screenWidth / 5,
                child: Image.asset("images/stevejobs@3x.png")),
          ),
          const Text(
            "Steve Jobs",
            style:
                TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(
                right: screenWidth / 100, left: screenWidth / 100),
            child: Text(
              "The people who are crazy enough to think they can change the world are the ones who do.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: screenWidth / 30),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Padding(
              padding: EdgeInsets.only(bottom: screenHeight / 100),
              child: SizedBox(
                width: screenWidth / 2,
                height: screenHeight / 15,
                child: ElevatedButton(
                    onPressed: () {
                      print("The quote is shared");
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        foregroundColor: Colors.white),
                    child: Text(
                      "Share The Quote",
                      style: TextStyle(fontSize: screenWidth / 30),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
