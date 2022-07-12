import 'package:flutter/material.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_app_bar.dart';

class EventCheckInScreen extends StatefulWidget {
  const EventCheckInScreen({Key? key}) : super(key: key);

  @override
  State<EventCheckInScreen> createState() => _EventCheckInScreenState();
}

class _EventCheckInScreenState extends State<EventCheckInScreen> {
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
