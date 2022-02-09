import 'package:flutter/material.dart';
import 'package:google_provider/google_provider.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Container(
            color: Colors.grey,
            child: Center(
                child: GoogleProvider().accountButton()))),
      );
  }
}