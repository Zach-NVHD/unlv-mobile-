import 'package:flutter/material.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_app_bar.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_button.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_textfield.dart';

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
                UNLVTextfield(
                  hintText: 'Email',
                  verticalPadding: MediaQuery.of(context).size.height * 0.025,
                  horizontalPadding: MediaQuery.of(context).size.height * 0.025,
                  borderWidth: 1,
                  borderRadius: 10,
                  controller: email,
                ),
                UNLVTextfield(
                  hintText: 'Password',
                  verticalPadding: MediaQuery.of(context).size.height * 0.025,
                  horizontalPadding: MediaQuery.of(context).size.height * 0.025,
                  borderWidth: 1,
                  borderRadius: 10,
                  isObscure: true,
                  controller: password,
                ),
                UNLVButton(
                  ontap: () {},
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
