import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget{
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        spacing: 8,
        runSpacing:8,
        direction: Axis.horizontal,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.black,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.grey,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.greenAccent,
          ),
        ],
      ),
    );
  }
}

/*
Wrap widget aligns the widgets in a horizontal and vertical manner.
Generally, we use Rows and Columns to do that but if we have some widgets
which are not able to fit in the Row/Column then it will give us Overflow
Message ( for ex: Right Overflowed by 570 pixels).
 */