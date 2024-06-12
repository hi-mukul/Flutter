import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class iconWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Icon(
        Icons.person,
        size: 100,
        color: Colors.cyanAccent,
      ),
    );
  }
}