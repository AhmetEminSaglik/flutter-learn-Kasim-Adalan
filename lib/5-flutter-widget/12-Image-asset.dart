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
  List imageList = [];
  int imageIndex = 0;

  List<String> fillImageListPath() {
    List<String> list = [];
    list.add("big-image.jpg");
    // list.add("logo.png");
    list.add("nature.jpeg");
    list.add("potato-and-meatballs.png");
    list.add("stevejobs@1x.png");
    list.add("stevejobs@2x.png");
    list.add("stevejobs@3x.png");

    for (int i = 0; i < list.length; i++) {
      list[i] = "images/" + list[i];
    }

    return list;
  }

  @override
  void initState() {
    super.initState();
    imageList = fillImageListPath();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Image"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 400,
                  height: 250,
                  child: Image.asset(imageList[imageIndex])),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          print("image : ${imageList[imageIndex]}");
                          print("index : ${imageIndex}");
                          setState(() {
                            imageIndex--;
                            imageIndex %= imageList.length;
                          });
                        },
                        child: Text("Back")),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            imageIndex++;
                            imageIndex %= imageList.length;
                          });
                        },
                        child: Text("Next")),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
