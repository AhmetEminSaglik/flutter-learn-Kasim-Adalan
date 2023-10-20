import 'package:dart_demo/12-State-Management/1-Provider/CounterModel.dart';
import 'package:dart_demo/12-State-Management/2-Bloc-cubit/CounterCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Page 2"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<CounterCubit, int>(builder: (context, counter) {
                return Text(
                  "$counter",
                  style: TextStyle(fontSize: 46),
                );
              }),
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterCubit>().increaseCounter();
                  },
                  child: Text("Increase counter")),
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterCubit>().decreaseCounter();
                  },
                  child: Text("Decrease counter")),
            ],
          ),
        ));
  }
}
