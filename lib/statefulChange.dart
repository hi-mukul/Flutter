import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class statefulChange extends StatefulWidget{
  @override
  State<statefulChange> createState() => _statefulChangeState();
}

class _statefulChangeState extends State<statefulChange> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var Result = "";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: Colors.black12,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: no1Controller,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                      labelText: 'Enter the 1st Number'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: no2Controller,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter the 2nd Number'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());

                      var sum=no1+no2;
                      Result="The sum is  $sum";
                      setState(() {
                        no1Controller.clear();
                        no2Controller.clear();
                      });
                    }, child: Text('Add')

                    ),
                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());

                      var sub=no1-no2;
                      Result="The Sub is  $sub";
                      setState(() {
                        no1Controller.clear();
                        no2Controller.clear();
                      });
                    }, child: Text('Sub')
                    ),
                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());

                      var div=no1/no2;
                      Result="The Div is  $div";
                      setState(() {
                        no1Controller.clear();
                        no2Controller.clear();
                      });
                    }, child: Text('Div')
                    ),
                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());

                      var multi=no1*no2;
                      Result="The Multi is  $multi";
                      setState(() {
                        no1Controller.clear();
                        no2Controller.clear();
                      });
                    }, child: Text('Multi')
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(Result,
                  style: TextStyle(fontSize: 25, color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

