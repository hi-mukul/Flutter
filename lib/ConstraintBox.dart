import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConstraintBox extends StatefulWidget{
  @override
  State<ConstraintBox> createState() => _ConstraintBoxState();
}

class _ConstraintBoxState extends State<ConstraintBox> {
  @override
  Widget build (BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 100,
            minWidth: 200,
            maxHeight: 200,
            maxWidth: 250
          ),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: (){
            },

            child: Text('Click Here'),
          )
      ),
    );
  }
}