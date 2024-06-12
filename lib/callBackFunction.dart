import 'package:flutter/material.dart';

class callBackfunction extends StatelessWidget{
  const callBackfunction({super.key});


  callBack(){
    print('Clicked');
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ElevatedButton(
        onPressed: callBack,
        child: const Text('Click Here'),
      ),
    );
  }
}