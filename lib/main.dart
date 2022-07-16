import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'myhomepage.dart';


void main(){
  runApp(const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Main Hon Na',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const MyHomePage(title: 'CASIAN DEVELOPER\'S',),
    );
  }
}
