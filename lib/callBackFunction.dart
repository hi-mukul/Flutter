import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class callBackfunction extends StatelessWidget{

  callBack(){
    print('Clicked');
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ElevatedButton(
        child: Text('Click Here'),
        onPressed: callBack,
      ),
    );
  }
}