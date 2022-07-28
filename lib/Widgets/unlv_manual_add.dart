import 'package:flutter/material.dart';
import 'package:unlv_ceao_mobile_sign_in/Logic/text_field_checks.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_button.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_textfield.dart';
import 'package:unlv_ceao_mobile_sign_in/constants.dart';

class UNLVManualAddPopUp extends StatefulWidget {
  const UNLVManualAddPopUp({Key? key}) : super(key: key);

void showPopUp(BuildContext context) async {
    showDialog(context: context, builder: (context) => UNLVManualAddPopUp());
  }
  @override
  State<UNLVManualAddPopUp> createState() => _UNLVManualAddPopUpState();
}

class _UNLVManualAddPopUpState extends State<UNLVManualAddPopUp> {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController gradeLevel = TextEditingController();
  TextEditingController studentNum = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Constants.heading(text: 'Manually Add Participant'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          UNLVTextfield(
            checkIfGood: TextFieldChecks().isFirstNameGood,
            resetUI: () {
              setState(() {});
            },
            hintText: 'First Name',
            verticalPadding: MediaQuery.of(context).size.height * 0.025,
            horizontalPadding: MediaQuery.of(context).size.height * 0.025,
            borderWidth: 1,
            borderRadius: 10,
            controller: firstName,
          ),
          UNLVTextfield(
            checkIfGood: TextFieldChecks().isLastNameGood,
            resetUI: () {
              setState(() {});
            },
            verticalPadding: MediaQuery.of(context).size.height * 0.025,
            hintText: 'Last Name',
            horizontalPadding: MediaQuery.of(context).size.height * 0.025,
            borderWidth: 1,
            borderRadius: 10,
            controller: lastName,
          ),
          UNLVTextfield(
            checkIfGood: TextFieldChecks().containsAnythingButNumbers,
            resetUI: () {
              setState(() {});
            },
            hintText: 'Grade Level',
            verticalPadding: MediaQuery.of(context).size.height * 0.025,
            horizontalPadding: MediaQuery.of(context).size.height * 0.025,
            borderWidth: 1,
            borderRadius: 10,
            controller: gradeLevel,
          ),
          UNLVTextfield(
            checkIfGood: TextFieldChecks().containsAnythingButNumbers,
            resetUI: () {
              setState(() {});
            },
            hintText: 'Student Number',
            verticalPadding: MediaQuery.of(context).size.height * 0.025,
            horizontalPadding: MediaQuery.of(context).size.height * 0.025,
            borderWidth: 1,
            borderRadius: 10,
            controller: studentNum,
          ),
          UNLVButton(
            isClickable: true,
            // TextFieldChecks()
            //         .containsAnythingButNumbers(gradeLevel.text) &&
            //     TextFieldChecks().containsAnythingButNumbers(studentNum.text) &&
            //     TextFieldChecks().isFirstNameGood(firstName.text) &&
            //     TextFieldChecks().isFirstNameGood(lastName.text),
            ontap: () {
              Navigator.pop(context);
            },
            horizontalPadding: MediaQuery.of(context).size.height * 0.025,
            text: 'Add',
          )
        ],
      ),
    );
  }
    
}
