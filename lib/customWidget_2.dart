import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomWidget_2 extends StatelessWidget{

  final String btnName;
  final Icon? icon;
  final Color bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  CustomWidget_2({
    required this.btnName,
    this.icon,
    this.bgColor = Colors.cyan,
    this.textStyle,
    this.callback
  });

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      child: icon!= null? Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon!,
          SizedBox(
            width: 15,
          ),
          Text(btnName, style: textStyle,)
        ],
      ): Text(btnName, style: textStyle,),
      onPressed: (){
        callback!();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shadowColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        )
      ),
    );
  }
}


// Body code
/*
Center(
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
 */