import 'package:dart_demo/13-youtube/1-timer/Tile.dart';
import 'package:dart_demo/13-youtube/1-timer/TimerHours.dart';
import 'package:dart_demo/13-youtube/1-timer/TimerMinute.dart';
import 'package:dart_demo/3-practise-projects/core/ScreenInfoClass.dart';
import 'package:flutter/material.dart';

//https://www.udemy.com/course/flutter-ile-uygulama-gelistirme-kursu-android-ios/learn/lecture/23728946#overview
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

class _HomePageState extends State<HomePage> {
  int currentHour = 0;
  int currentMin = 0;
  var _controller=FixedExtentScrollController();

  @override
  Widget build(BuildContext context) {
    ScreenInfoFromMediaQueryData(mediaQueryData: MediaQuery.of(context));
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            width: ScreenInfoFromMediaQueryData.getScreenWidth() / 5,
            color: Colors.redAccent,
            child: ListWheelScrollView.useDelegate(
              controller: _controller,
                onSelectedItemChanged: (value) => {
                      currentHour = value,
                      print("Hour  $currentHour"),
                    },
                itemExtent: 50,
                physics: FixedExtentScrollPhysics(),
                perspective: 0.01,
                childDelegate: ListWheelChildBuilderDelegate(
                    childCount: 24,
                    builder: (BuildContext context, int index) {
                      return TimerHours(
                        hours: index,
                      );
                    })),
          ),
        ),
        Center(
          child: Container(
            width: ScreenInfoFromMediaQueryData.getScreenWidth() / 5,
            color: Colors.blueAccent,
            child: ListWheelScrollView.useDelegate(
              // useMagnifier: true,
              //   magnification: 1.4,
                onSelectedItemChanged: (value) => {
                      currentMin = value,
                      print("Hour  $currentMin"),
                    },
                itemExtent: 50,
                physics: FixedExtentScrollPhysics(),
                perspective: 0.01,
                childDelegate: ListWheelChildBuilderDelegate(
                    childCount: 60,
                    builder: (BuildContext context, int index) {
                      return TimerMinute(
                        mins: index,
                      );
                    })),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              print("time :  $currentHour:$currentMin ");
              print("Controller selected Item : ${_controller.selectedItem}");
            },
            child: Text("Print Time"))
      ],
    ));
  }
}
