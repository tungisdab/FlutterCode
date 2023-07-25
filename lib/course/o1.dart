import 'package:flutter/material.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstApp(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      )
    );
  }
}

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('On Tap'),
          leading: IconButton(
            icon: const Icon(Icons.apps),
            tooltip: 'Menu',
            onPressed:() {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context){
                  return SafeArea(
                    child: Scaffold(
                      appBar: AppBar(
                        title: const Text('back'),
                      ),
                      body:Center(
                        child: Text.rich(
                          TextSpan(
                            text: 'Hello',
                            children: [
                              TextSpan(
                                text: 'World',
                                style: TextStyle(
                                  color: Colors.blue
                                )
                              ),
                              TextSpan(
                                text: 'Khanh',
                                style: TextStyle(
                                  color: Colors.green,
                                )
                              ),
                              TextSpan(
                                text: 'Bip'
                              )
                            ],
                            style: TextStyle(
                              fontSize: 30,
                              fontStyle: FontStyle.italic,
                              color: Colors.red,
                            )
                          )
                        ),
                      )
                    ),
                  );
                }
              ));
            }
          ),
        ),
        body: Container(
          child: Row( // có thể dùng wrap để có thể đẩy layout xuống dưới khi bị tràn màn hình
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Container(
                  width: 100,
                  height: 100, 
                  color: Colors.red,
                
                  child: Center(
                    child: Text('Xin Chao')
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Text('Texxt'),
                  color: Colors.blue,
                ),
              ),
              Container(
                width: 100,
                height: 100, 
                color: Colors.green,
              ),
            ],
          ),
        ),
      )
    );
  }
}