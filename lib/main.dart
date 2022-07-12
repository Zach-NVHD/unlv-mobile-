import 'package:flutter/material.dart';
import 'package:unlv_ceao_mobile_sign_in/constants.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'UNLV CAEO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     
    );
  }
}


