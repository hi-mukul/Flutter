import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
1. A widget that position its children relative to the edges of its box.
2. This class is useful if you want to overlap several children in a simple way.
3. for example having some text and an image, overlaid with a gradient and a button attached to the bottom.

*/


class StackWidget extends StatelessWidget{
  @override
  Widget build( BuildContext context){
    return Scaffold(
      body: Container(
        height: 400,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: 200,
                width: 200,
                color:  Colors.grey,
              ),
            ),
            Positioned(
              left: 21,
              top: 21,
              child: Container(
                height: 200,
                width: 200,
                color:  Colors.blue,
              ),
            ),
            Positioned(
              left: 42,
              top: 42,
              child: Container(
                height: 200,
                width: 200,
                color:  Colors.yellowAccent,
              ),
            ),
            Positioned(
              left: 63,
              top: 63,
              child: Container(
                height: 200,
                width: 200,
                color:  Colors.greenAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}