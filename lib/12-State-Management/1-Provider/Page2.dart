import 'package:dart_demo/12-State-Management/1-Provider/CounterModel.dart';
import 'package:flutter/material.dart';
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
             Consumer<CounterModel>(builder: (context,counterModel,child){
               return Text("${counterModel.readCounter()}",style: TextStyle(fontSize: 46),);
             }),
              Consumer<CounterModel>(builder: (context, counterModel, child) {
                return ElevatedButton(
                    onPressed: () {
                      counterModel.increaseCounter();
                    },
                    child: Text("Increase counter"));
              }),
              Consumer<CounterModel>(builder: (context, counterModel, child) {
                return ElevatedButton(
                    onPressed: () {
                      counterModel.decreaseCounter();
                    },
                    child: Text("Decrease counter"));
              }),
            ],
          ),
        ));
  }
}
