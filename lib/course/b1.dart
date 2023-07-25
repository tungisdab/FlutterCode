// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(

        body: Center(child: MyWidget1(false)),

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

  final bool loading;
  const MyWidget(this.loading);
  
  

  @override
  Widget build(BuildContext context) {
    // if(loading){
    //   return const CircularProgressIndicator();
    // }
    // else{
    //   return const Text('State');
    // }
    return loading ? const CircularProgressIndicator() : const Text('State');
  }

}

class MyWidget1 extends StatefulWidget{

  final bool loading;
  MyWidget1(this.loading);

  @override
  State<StatefulWidget> createState() {
    return MyWidget1State();
  }

}

class MyWidget1State extends State<MyWidget1>{

  late bool _localLoading;

  @override
  void initState() {
    super.initState();
    _localLoading = widget.loading;
  }

  @override
  Widget build(BuildContext context) {
    return _localLoading ? const CircularProgressIndicator() : FloatingActionButton(onPressed: onClickButton,);
  }

  void onClickButton(){
    setState(() {
      _localLoading = true;
    });
  }
}