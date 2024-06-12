import 'package:flutter/material.dart';

class Grid extends StatelessWidget{
  const Grid({super.key});

  @override
  Widget build(BuildContext context){

    var arrColors =[
      Colors.pink,
      Colors.orange,
      Colors.red,
      Colors.green,
      Colors.blueAccent,
      Colors.white,
      Colors.grey,
      Colors.black
    ];

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Papa'),
      //   backgroundColor: Colors.white,
      // ),

      body: Column(
        children: [

          //////////////////////////////////// Grid view Count //////////////////////
          // Container(
          //   height: 300,
          //   child: GridView.count(crossAxisCount:   5,
          //     crossAxisSpacing: 11,
          //     mainAxisSpacing: 11,
          //     children: [
          //       Container(color: arrColors[0]),
          //       Container(color: arrColors[1]),
          //       Container(color: arrColors[2]),
          //       Container(color: arrColors[3]),
          //       Container(color: arrColors[4]),
          //       Container(color: arrColors[5]),
          //       Container(color: arrColors[6]),
          //       Container(color: arrColors[7]),
          //       Container(color: arrColors[0]),
          //       Container(color: arrColors[1]),
          //       Container(color: arrColors[2]),
          //       Container(color: arrColors[3]),
          //       Container(color: arrColors[4]),
          //     ],
          //   ),
          // ),
          // Container(
          //   height: 50,
          // ),

          //////////////////////////////////// Grid view Extent //////////////////////

          // Container(
          //   height: 300,
          //   child: GridView.extent(maxCrossAxisExtent: 150,
          //     crossAxisSpacing: 11,
          //     mainAxisSpacing: 11,
          //     children: [
          //       Container(color: arrColors[0]),
          //       Container(color: arrColors[1]),
          //       Container(color: arrColors[2]),
          //       Container(color: arrColors[3]),
          //       Container(color: arrColors[4]),
          //       Container(color: arrColors[5]),
          //       Container(color: arrColors[6]),
          //       Container(color: arrColors[7]),
          //       Container(color: arrColors[0]),
          //       Container(color: arrColors[1]),
          //       Container(color: arrColors[2]),
          //       Container(color: arrColors[3]),
          //       Container(color: arrColors[4]),
          //     ],
          //   ),
          // ),
          // Container(height: 50,),

          //////////////////////////////////// Grid view Builder //////////////////////

          SizedBox(
            height: 150,
            child: GridView.builder(
                itemBuilder: (context, index) {
                  return Container(color: arrColors[index],);
                },
              itemCount: arrColors.length,


              //////////////////////////////////// Extent //////////////////////////////////

              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 100,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),

              //////////////////////////////////// Count ////////////////////////////////

              // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //   crossAxisCount: 5,
              //   mainAxisSpacing: 8,
              //   crossAxisSpacing: 8,
              // ),



            ),
          )
        ],
      ),
    );
  }
}