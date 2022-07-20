import 'package:flutter/material.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_app_bar.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_button.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_textfield.dart';
import 'package:unlv_ceao_mobile_sign_in/constants.dart';
import 'package:unlv_ceao_mobile_sign_in/screen_names.dart';
import 'package:velocity_x/velocity_x.dart';

class StudentProfileScreen extends StatefulWidget {
  const StudentProfileScreen({Key? key}) : super(key: key);

  @override
  State<StudentProfileScreen> createState() => _StudentProfileScreenState();
}

class _StudentProfileScreenState extends State<StudentProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UNLVAppBar(
        showBackButton: false,
        text: 'Profile Screen',
      ),
      body: ListView(
        children: [
         UNLVTextfield(
            hintText: 'First Name',
            verticalPadding: MediaQuery.of(context).size.height * 0.025,
            horizontalPadding: MediaQuery.of(context).size.height * 0.025,
            borderWidth: 1,
            borderRadius: 10,
          ),
          UNLVTextfield(
            verticalPadding: MediaQuery.of(context).size.height * 0.025,
            hintText: 'Last Name',
            horizontalPadding: MediaQuery.of(context).size.height * 0.025,
            borderWidth: 1,
            borderRadius: 10,
          
          ),
          UNLVTextfield(
            hintText: 'Grade Level',
            verticalPadding: MediaQuery.of(context).size.height * 0.025,
            horizontalPadding: MediaQuery.of(context).size.height * 0.025,
            borderWidth: 1,
            borderRadius: 10,
            
          ),
          UNLVTextfield(
            hintText: 'Student Number',
            verticalPadding: MediaQuery.of(context).size.height * 0.025,
            horizontalPadding: MediaQuery.of(context).size.height * 0.025,
            borderWidth: 1,
            borderRadius: 10,
           
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
