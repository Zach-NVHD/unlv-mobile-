import 'package:flutter/material.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_app_bar.dart';

class FindEventScreen extends StatefulWidget {
  const FindEventScreen({Key? key}) : super(key: key);

  @override
  State<FindEventScreen> createState() => _FindEventScreenState();
}

class _FindEventScreenState extends State<FindEventScreen> {
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