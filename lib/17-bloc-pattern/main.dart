import 'package:dart_demo/17-bloc-pattern/HomePageCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//https://www.udemy.com/course/flutter-ile-uygulama-gelistirme-kursu-android-ios/learn/lecture/23728946#overview
// to delete all comment  lines --> ctrl + f -->//.* --> delete all comments
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => HomePageCubit())],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController tfCont1 = TextEditingController();
  TextEditingController tfCont2 = TextEditingController();
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Bloc Pattern"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BlocBuilder<HomePageCubit, int>(builder: (context, result) {
                  return Text("Result : $result",
                      style: TextStyle(fontSize: 35));
                }),
                TextField(
                  controller: tfCont1,
                  decoration: const InputDecoration(hintText: "Number 1 "),
                  style: TextStyle(fontSize: 30),
                ),
                TextField(
                    controller: tfCont2,
                    decoration: const InputDecoration(hintText: "Number 1 "),
                    style: TextStyle(fontSize: 30)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          int num1 = int.parse(tfCont1.text);
                          int num2 = int.parse(tfCont2.text);
                          context.read<HomePageCubit>().plus(num1, num2);
                        },
                        child: Text("PLUS")),
                    ElevatedButton(
                        onPressed: () {
                          int num1 = int.parse(tfCont1.text);
                          int num2 = int.parse(tfCont2.text);
                          context.read<HomePageCubit>().multiple(num1, num2);
                        },
                        child: Text("MULTIPLE")),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
