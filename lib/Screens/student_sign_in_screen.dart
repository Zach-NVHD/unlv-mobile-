import 'package:flutter/material.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_app_bar.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_button.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_textfield.dart';
import 'package:unlv_ceao_mobile_sign_in/screen_names.dart';
import 'package:velocity_x/velocity_x.dart';

class StudentSignInScreen extends StatefulWidget {
  const StudentSignInScreen({Key? key}) : super(key: key);

  @override
  State<StudentSignInScreen> createState() => _StudentSignInScreenState();
}

class _StudentSignInScreenState extends State<StudentSignInScreen> {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController gradeLevel = TextEditingController();
  TextEditingController studentNum = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UNLVAppBar(
        text: 'Student Sign In',
      ),
      body: ListView(
        children: [
          UNLVTextfield(
            hintText: 'First Name',
            verticalPadding: MediaQuery.of(context).size.height * 0.025,
            horizontalPadding: MediaQuery.of(context).size.height * 0.025,
            borderWidth: 1,
            borderRadius: 10,
            controller: firstName,
          ),
          UNLVTextfield(
            verticalPadding: MediaQuery.of(context).size.height * 0.025,
            hintText: 'Last Name',
            horizontalPadding: MediaQuery.of(context).size.height * 0.025,
            borderWidth: 1,
            borderRadius: 10,
            controller: lastName,
          ),
          UNLVTextfield(
            hintText: 'Grade Level',
            verticalPadding: MediaQuery.of(context).size.height * 0.025,
            horizontalPadding: MediaQuery.of(context).size.height * 0.025,
            borderWidth: 1,
            borderRadius: 10,
            controller: gradeLevel,
          ),
          UNLVTextfield(
            hintText: 'Student Number',
            verticalPadding: MediaQuery.of(context).size.height * 0.025,
            horizontalPadding: MediaQuery.of(context).size.height * 0.025,
            borderWidth: 1,
            borderRadius: 10,
            controller: studentNum,
          ),
          UNLVButton(
            ontap: () {
              context.vxNav.push(Uri.parse(ScreeNames.findEvent));
            },
            horizontalPadding: MediaQuery.of(context).size.height * 0.025,
            text: 'Sign In',
          )
        ],
      ),
    );
  }
}
