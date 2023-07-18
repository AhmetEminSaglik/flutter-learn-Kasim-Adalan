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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  @override
  void initState() {
    // when app page starts, this method is excecuted
    super.initState();
    print("-->initState run");
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState

    if (state == AppLifecycleState.inactive) {
      print("inactive() method run");
    }
    if (state == AppLifecycleState.paused) {
      print("paused() method run");
    }
    if (state == AppLifecycleState.resumed) {
      print("resumed() method run");
    }
    if (state == AppLifecycleState.detached) {
      print("detached() method run");
    }
    super.didChangeAppLifecycleState(state);
  }

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print("build method run");
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Life Cycle Behaviors"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                      print("Clicked $counter");
                    });
                  },
                  child: Text("CLICK $counter"))
            ],
          ),
        ));
  }
}
