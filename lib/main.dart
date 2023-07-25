

import 'package:app_1/packages/qoute/quote.dart';
import 'package:app_1/page/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Quotes().getAll();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return MaterialApp(
      home: TrangChu(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
    );
  }
}
class TrangChu extends StatelessWidget {
  const TrangChu({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Test'),
          leading:IconButton(
            icon: const Icon(Icons.apps),
            onPressed: () {
              
            },
          ),
        ),
        body: Center(
          child: LandingPage(),
        ),
      ),
    );
  }
}