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
  late int changeValueRange = 100;
  late int width = 900;
  late int height = 900;
  late int minWidth = changeValueRange + 10;
  late int minHeight = changeValueRange + 10;

  late int maxWidth = 10000;
  late int maxHeight = 1000;

  int increaseValue(int value) {
    return (value + changeValueRange);
  }

  int decreaseValue(int value) {
    return (value - changeValueRange);
  }

  void printImageSize() {
    print("width : $width, height : $height");
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                  width: 400,
                  height: 250,
                  child: FadeInImage.assetNetwork(
                    placeholder: "images/stevejobs@1x.png",
                    image: "https://picsum.photos/$width/$height",
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        /*   UpdateButtonWithGivenFuncAndProperty(
                            edge: width,
                            changeValueRange: changeValueRange,
                            name: "Width",
                            function: increaseValue),*/
                        ElevatedButton(
                            onPressed: width < maxWidth
                                ? () {
                                    setState(() {
                                      width = increaseValue(width);
                                      increaseValue(width);
                                      printImageSize();
                                    });
                                  }
                                : null,
                            child: Text("Increase Width (+$changeValueRange)")),
                        ElevatedButton(
                          child: Text("Increase Height (+$changeValueRange)"),
                          onPressed: height < maxHeight
                              ? () {
                                  setState(() {
                                    height = increaseValue(height);
                                    printImageSize();
                                  });
                                }
                              : null,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                            onPressed: width > minWidth
                                ? () {
                                    setState(() {
                                      width = decreaseValue(width);
                                      printImageSize();
                                    });
                                  }
                                : null,
                            child: Text("Decrease Width (-$changeValueRange)")),
                        ElevatedButton(
                            onPressed: height > minHeight
                                ? () {
                                    setState(() {
                                      height = decreaseValue(height);
                                      printImageSize();
                                    });
                                  }
                                : null,
                            child:
                                Text("Decrease Height (-$changeValueRange)")),
                      ],
                    ),
                    Text(
                      "Width:  $width, Heigth: $height",
                      style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class IncreaseValueButton extends StatelessWidget {
  final int edge;
  final int changeValueRange;
  final String name;

  IncreaseValueButton(
      {required this.edge, required this.changeValueRange, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text("Increase Height (+$changeValueRange)");
  }
}
