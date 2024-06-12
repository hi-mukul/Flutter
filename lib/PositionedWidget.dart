import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class positionedWidget extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Container(
      color: Colors.grey,
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              bottom: 8,
              right: 8,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.cyanAccent,
              ),
            ),
          ],
        )
    );
  }
}