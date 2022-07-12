import 'package:flutter/material.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_app_bar.dart';

class EventInformationScreen extends StatefulWidget {
  const EventInformationScreen({Key? key}) : super(key: key);

  @override
  State<EventInformationScreen> createState() => _EventInformationScreenState();
}

class _EventInformationScreenState extends State<EventInformationScreen> {
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