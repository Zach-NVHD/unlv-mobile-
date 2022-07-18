import 'package:flutter/material.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_app_bar.dart';

class StudentSignInScreen extends StatefulWidget {
  const StudentSignInScreen({Key? key}) : super(key: key);

  @override
  State<StudentSignInScreen> createState() => _StudentSignInScreenState();
}

class _StudentSignInScreenState extends State<StudentSignInScreen> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(
      appBar: UNLVAppBar(),
      body: ListView(
        children: [
          
        ],
      ),
    );
  }
}
