import 'package:flutter/material.dart';

class TimerHours extends StatelessWidget {
  int hours;

  TimerHours({required this.hours});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        hours<10 ? '0'+hours.toString(): hours.toString(),
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
