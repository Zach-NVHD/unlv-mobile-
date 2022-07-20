import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:unlv_ceao_mobile_sign_in/Logic/text_field_checks.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_app_bar.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_button.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_image_picker.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_textfield.dart';

class CreateEventScreen extends StatefulWidget {
  const CreateEventScreen({Key? key}) : super(key: key);

  @override
  State<CreateEventScreen> createState() => _CreateEventScreenState();
}

class _CreateEventScreenState extends State<CreateEventScreen> {
  TextEditingController eventName = TextEditingController();
  TextEditingController eventDescription = TextEditingController();
  TextEditingController startTime = TextEditingController();
  TextEditingController endTime = TextEditingController();
  TextEditingController location = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UNLVAppBar(
        text: 'Create Event',
      ),
      body: ListView(
        children: [
          UNLVTextfield(
            hintText: 'Title',
            checkIfGood: TextFieldChecks().isFirstNameGood,
            resetUI: () {
              setState(() {});
            },
            verticalPadding: MediaQuery.of(context).size.height * 0.025,
            horizontalPadding: MediaQuery.of(context).size.height * 0.025,
            borderWidth: 1,
            borderRadius: 10,
            controller: eventName,
          ),
          UNLVTextfield(
            hintText: 'Description',
            checkIfGood: TextFieldChecks().isFirstNameGood,
            resetUI: () {
              setState(() {});
            },
            verticalPadding: MediaQuery.of(context).size.height * 0.025,
            horizontalPadding: MediaQuery.of(context).size.height * 0.025,
            borderWidth: 1,
            borderRadius: 10,
            controller: eventDescription,
          ),
          GestureDetector(
            onTap: () {
              //open a selection calendar to pick date
            },
            child: UNLVTextfield(
              hintText: 'Date',
              checkIfGood: TextFieldChecks().isFirstNameGood,
              resetUI: () {
                setState(() {});
              },
              verticalPadding: MediaQuery.of(context).size.height * 0.025,
              horizontalPadding: MediaQuery.of(context).size.height * 0.025,
              borderWidth: 1,
              borderRadius: 10,
              suffixIcon: MdiIcons.calendar,
              controller: location,
            ),
          ),
          Row(
            children: [
              UNLVTextfield(
                hintText: 'Start Time',
                checkIfGood: TextFieldChecks().isFirstNameGood,
                resetUI: () {
                  setState(() {});
                },
                width: MediaQuery.of(context).size.width * 0.5,
                verticalPadding: MediaQuery.of(context).size.height * 0.025,
                horizontalPadding: MediaQuery.of(context).size.height * 0.025,
                borderWidth: 1,
                borderRadius: 10,
                controller: startTime,
              ),
              UNLVTextfield(
                checkIfGood: TextFieldChecks().isFirstNameGood,
                resetUI: () {
                  setState(() {});
                },
                hintText: 'End Time',
                width: MediaQuery.of(context).size.width * 0.5,
                verticalPadding: MediaQuery.of(context).size.height * 0.025,
                horizontalPadding: MediaQuery.of(context).size.height * 0.025,
                borderWidth: 1,
                borderRadius: 10,
                controller: endTime,
              ),
            ],
          ),
          UNLVTextfield(
            hintText: 'Location',
            checkIfGood: TextFieldChecks().isFirstNameGood,
            resetUI: () {
              setState(() {});
            },
            verticalPadding: MediaQuery.of(context).size.height * 0.025,
            horizontalPadding: MediaQuery.of(context).size.height * 0.025,
            borderWidth: 1,
            borderRadius: 10,
            controller: location,
          ),
          UNLVImagePicker(),
          UNLVButton(
            ontap: () {},
            text: 'Create',
            horizontalPadding: MediaQuery.of(context).size.height * 0.025,
          )
        ],
      ),
    );
  }
}
