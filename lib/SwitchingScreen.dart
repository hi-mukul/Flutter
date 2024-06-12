import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/statefulChange.dart';
import 'package:practice/statelessAndStateful.dart';

class SwitchingScreen extends StatefulWidget{
  @override
  State<SwitchingScreen> createState() => _SwitchingScreen();
}

class _SwitchingScreen extends State<SwitchingScreen>{
  @override
  Widget build (BuildContext context){
    return Center(
      child: ElevatedButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(
              builder: (context)=>statefulChange()
          ),
          );
        },
        child: Text('Click Here'),
      ),
    );

  }
}