import 'package:flutter/material.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_app_bar.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_button.dart';
import 'package:unlv_ceao_mobile_sign_in/constants.dart';
import 'package:unlv_ceao_mobile_sign_in/screen_names.dart';
import 'package:velocity_x/velocity_x.dart';

class AdminDashboardScreen extends StatefulWidget {
  const AdminDashboardScreen({Key? key}) : super(key: key);

  @override
  State<AdminDashboardScreen> createState() => _AdminDashboardScreenState();
}

class _AdminDashboardScreenState extends State<AdminDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UNLVAppBar(
        text: 'Admin Dashboard',
      ),
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.025),
            child: Constants.text(
                fontSize: 18,
                text:
                    'Welcome to the events overview. Here, you can view current and upcoming events, as well as create an event yourself.'),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
          ),
          UNLVButton(
            isClickable: true,
            ontap: () {
              context.vxNav.push(Uri.parse(ScreeNames.findEvent));
            },
            text: 'Event Dashboard',
            verticalPadding: MediaQuery.of(context).size.height * 0.025,
            horizontalPadding: MediaQuery.of(context).size.height * 0.025,
          ),
          UNLVButton(
            isClickable: true,
            ontap: () {
              context.vxNav.push(Uri.parse(ScreeNames.createEvent));
            },
            text: 'Create an Event',
            verticalPadding: MediaQuery.of(context).size.height * 0.025,
            horizontalPadding: MediaQuery.of(context).size.height * 0.025,
          )
        ],
      ),
    );
  }
}
