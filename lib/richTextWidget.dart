import 'package:flutter/material.dart';

class richTextWidget extends StatelessWidget{
  final double fSize;
  final String fFamily;

  const richTextWidget({super.key, 
    required this.fSize, required this.fFamily
  });

  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Center(
        child: RichText(
          text: TextSpan(

            //// default text style

            style: const TextStyle(
              fontSize: 30,
              color: Colors.cyanAccent,
            ),

            children: [
              const TextSpan(text: 'Wellcome to '),
              TextSpan(text: 'Aeroblast', style: TextStyle(
                color: Colors.yellow,
                fontSize: fSize,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: fFamily,
              )),
            ]
          ),
        ),
      ),
    );
  }
}

/*
Body Part of the above code


richTextWidget(
        fSize:50 ,
        fFamily: 'Schyler',
      ),
 */