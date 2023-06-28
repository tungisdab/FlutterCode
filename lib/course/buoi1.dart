import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());

  // khanhhhhh
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.lightBlue
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.ac_unit),
          onPressed: (){
            print('leading');
          },
        ),
        title: Text('This is appBar'),
      ),
      body: Center(
        // child: Text(
        //   'dont you give up, nah nah nah, i wont give up, nah nah nah',
        //   overflow: TextOverflow.ellipsis, // design text
        //   style: TextStyle(
        //     fontSize: 33,
        //     fontWeight: FontWeight.bold,
        //     color: Colors.red,
        //     // backgroundColor: Colors.green,
        //   ),
        // ),
        // child: Image.network('https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2020/12/7/860555/Twice1.jpg'),
        // child: TextButton(
        //   child: Image.network('https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2020/12/7/860555/Twice1.jpg'),
        //   onPressed: (){
        //       print('da click');
        //     },
        // ),
        // child: TextButton.icon( //ElevatedButton
        //   icon: Icon(Icons.ac_unit),
        //   label: Text('Click me'),
        //   onPressed: (){
        //     print('da click');
        //   },
        child: Text.rich(
          TextSpan(
              text: 'HI ',
              children: [
                TextSpan(
                    text: 'Thee ',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.red, fontSize: 33)
                ),
                TextSpan(
                    text: 'four',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.red, fontSize: 33)
                ),
              ]
          ),
          style: TextStyle(
            fontSize: 25,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
