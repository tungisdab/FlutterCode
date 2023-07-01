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
      body: Container(
        child: Wrap( 
          direction: Axis.vertical,
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
                child: Text('Hello'),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.black,
            ),
            Container(
              color: Colors.green,
              child: Text(
                'My name is Kmas',
                style: TextStyle(fontSize: 40),
              ),
            ),
          ],
        ),
      )
    );
  }
}
