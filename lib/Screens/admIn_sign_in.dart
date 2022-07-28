import 'package:flutter/material.dart';
import 'package:unlv_ceao_mobile_sign_in/Logic/authentication_brain.dart';
import 'package:unlv_ceao_mobile_sign_in/Logic/text_field_checks.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_app_bar.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_button.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_textfield.dart';
import 'package:unlv_ceao_mobile_sign_in/constants.dart';
import 'package:unlv_ceao_mobile_sign_in/screen_names.dart';
import 'package:velocity_x/velocity_x.dart';

class AdminSignUpScreen extends StatefulWidget {
  const AdminSignUpScreen({Key? key}) : super(key: key);

  @override
  State<AdminSignUpScreen> createState() => _AdminSignUpScreenState();
}

class _AdminSignUpScreenState extends State<AdminSignUpScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UNLVAppBar(
        text: 'Admin Sign In',
      ),
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Constants.text(
                    text:
                        'Passwods must include:\n 1 Uppercase Letter\n1 Lowercase Letter\n1 Number\n1 Special Character\nBe longer than 6 Characters',
                    fontSize: 20),
                UNLVTextfield(
                  checkIfGood: TextFieldChecks().isEmailGood,
                  resetUI: () {
                    setState(() {});
                  },
                  hintText: 'Email',
                  verticalPadding: MediaQuery.of(context).size.height * 0.025,
                  horizontalPadding: MediaQuery.of(context).size.height * 0.025,
                  borderWidth: 1,
                  borderRadius: 10,
                  controller: email,
                ),
                UNLVTextfield(
                  checkIfGood: TextFieldChecks().isPasswordGood,
                  resetUI: () {
                    setState(() {});
                  },
                  hintText: 'Password',
                  verticalPadding: MediaQuery.of(context).size.height * 0.025,
                  horizontalPadding: MediaQuery.of(context).size.height * 0.025,
                  borderWidth: 1,
                  borderRadius: 10,
                  isObscure: true,
                  controller: password,
                ),
                UNLVButton(
                  isClickable: true,
                  // TextFieldChecks().isEmailGood(email.text) &&
                  //     TextFieldChecks().isPasswordGood(password.text),
                  ontap: () {
                    Authentication.isAdmin = true;
                    //temporary to get to create event screen
                    context.vxNav.push(Uri.parse(ScreeNames.adminDashboard));
                  },
                  width: MediaQuery.of(context).size.width,
                  horizontalPadding: MediaQuery.of(context).size.height * 0.025,
                  text: 'Sign In',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
