import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:practice/customWidget_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  //
  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                width: 200,
                child: CustomWidget_2(btnName: 'Play', icon: Icon(Icons.play_arrow), callback: (){
                  print('Play');
                }, textStyle: TextStyle(fontSize:20),bgColor: Colors.cyan,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                width: 200,
                child: CustomWidget_2(btnName: 'Press', callback: (){
                  print('Press');
                }, textStyle: TextStyle(fontSize:20),bgColor: Colors.grey,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                width: 200,
                child: CustomWidget_2(btnName: 'Blocked', callback: (){
                  print('Blocked');
                }, textStyle: TextStyle(fontSize:20),bgColor: Colors.grey,icon: Icon(Icons.block),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
