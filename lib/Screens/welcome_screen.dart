import 'package:flutter/material.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_app_bar.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_button.dart';
import 'package:unlv_ceao_mobile_sign_in/constants.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UNLVAppBar(),
      body: ListView(
        children: [
          Image.asset('Images/main_screen_top.png'),
          Constants.text(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. \n\nQuisque nunc dolor, volutpat vel sapien ac, ultricies ullamcorper ex. Proin congue enim in turpis tristique.'),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.6,
            child: Stack(
              children: [
                Image.asset('Images/main_screen_bottom_decoration.png'),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        UNLVButton(
                          ontap: () {},
                          text: 'Admin Sign In',
                          verticalPadding: 20,
                        ),
                        UNLVButton(
                          ontap: () {},
                          text: 'Find An Event',
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
