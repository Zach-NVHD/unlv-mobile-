import 'package:flutter/material.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_app_bar.dart';

class AdminViewParticipants extends StatefulWidget {
  const AdminViewParticipants({Key? key}) : super(key: key);

  @override
  State<AdminViewParticipants> createState() => _AdminViewParticipantsState();
}

class _AdminViewParticipantsState extends State<AdminViewParticipants> {
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