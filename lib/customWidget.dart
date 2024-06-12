import 'package:flutter/material.dart';
import 'package:practice/gridView.dart';

class CustomWidget extends StatelessWidget{
  const CustomWidget({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Container(
        child: const Column(
          children: [
            ExWidget_1(),
            ExWidget_2(),
            ExWidget_3(),
            ExWidget_4(),

          ],
        ),
      ),
    );
  }
}

class ExWidget_1 extends StatelessWidget{
  const ExWidget_1({super.key});

  @override

  Widget build(BuildContext context){
    return Expanded(
      flex: 3,
      child: Container(
        color: Colors.grey,
        child: ListView.builder(itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.all(11.0),
          child: SizedBox(
            width: 100,
            child: CircleAvatar(
              backgroundColor: Colors.green,
            ),
          ),
        ),
          itemCount: 10, scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class ExWidget_2 extends StatelessWidget{
  const ExWidget_2({super.key});

  @override

  Widget build(BuildContext context){
    return Expanded(
      flex: 6,
      child: Container(
        color: Colors.cyan,
        child: ListView.builder(itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.all(8),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
            ),
            title: Text('Name'),
            subtitle: Text('Mobile No.'),
            trailing: Icon(Icons.delete),
          ),
        ),
          itemCount: 10,
        ),
      ),
    );
  }
}

class ExWidget_3 extends StatelessWidget{
  const ExWidget_3({super.key});

  @override

  Widget build(BuildContext context){
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.black,
        child: ListView.builder(itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            width: 200,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
          itemCount: 10, scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class ExWidget_4 extends StatelessWidget{
  const ExWidget_4({super.key});

  @override

  Widget build(BuildContext context){
    return Expanded(
      flex: 3,
      child: Container(
        color: Colors.pinkAccent,
        child: const Grid(),
      ),
    );
  }
}