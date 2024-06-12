import 'package:flutter/material.dart';

class SizedBox__ extends StatelessWidget{
  const SizedBox__({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
          maxHeight: 40,
          minHeight: 20,
          minWidth: 100,
          maxWidth: double.infinity,

        ),
          child: SizedBox.expand(
            // width: 200,
            // height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellowAccent,
                shadowColor: Colors.cyan,
              ),
              child: const Text('Click'),
              onPressed: (){

              },
            ),

          ),
        ),
      ),
    );
  }
}
/*
SizedBox is a built-in widget in flutter SDK.
It is a simple box with a specified size. It can be used to set size constraints to the child widget,
put an empty SizedBox between the two widgets to get some space in between,
or something else. It is somewhat similar to a Container widget with fewer properties.
 */


/*
Constructor of SizedBox.expand:

 This implementation of the SizedBox widget allows it to be as big as the parent widget allows it to be.

const SizedBox.expand(
{Key key,
Widget child}
)
 */