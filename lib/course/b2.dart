// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(

        body: MyWidget()

        // appBar: AppBar(
        //   title: const Text('Buổi 1'),
        //   backgroundColor: Colors.red.shade100,
        // ),
        // body: const Center(
        //   child: Text('Hello world')
        // )
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));

}

class MyWidget extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Nguyen Cong Khanh Develop a plan for how to collaborate with your team, share the design and learn about the levels of access to grant in Figma. Develop a plan for how to collaborate with your team, share the design and learn about the levels of access to grant in Figma.',
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      maxLines: 3,
      overflow: TextOverflow.clip,
      textScaleFactor: 1.5,
      style: TextStyle(
        color: Colors.pink,
        // backgroundColor: Colors.green,
        fontWeight: FontWeight.bold,
        fontFamily: 'Times New Roman',
        decoration: TextDecoration.lineThrough,

      ),
    );
  }

}
