import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class awesomFontIcon extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.heart_broken,
            color: Colors.red,
            size: 200,
          ),
          FaIcon(
              FontAwesomeIcons.amazon,
            size: 100,

          ),
        ],
      ),
    );
  }
}