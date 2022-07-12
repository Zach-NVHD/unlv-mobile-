import 'package:flutter/material.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_app_bar.dart';

class EventInfo extends StatefulWidget {
  const EventInfo({Key? key}) : super(key: key);

  @override
  State<EventInfo> createState() => _EventInfoState();
}

class _EventInfoState extends State<EventInfo> {
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