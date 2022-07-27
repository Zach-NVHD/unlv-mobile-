import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
  TextEditingController dateController = TextEditingController();
  DateTime? date;
  File? photo;

  void imageSelected(File? image){

    setState(() {
          photo = image;
    });
  }
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
            onTap: () async {
              //open a selection calendar to pick date
              date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now().subtract(Duration(days: 1)),
                  lastDate: DateTime.now().add(Duration(days: 10000)));
              final DateFormat formatter = DateFormat('MM/dd/yyyy');
              if (date != null) {
                dateController.text = formatter.format(date!);
              }
              setState(() {});
            },
            child: UNLVTextfield(
              isInteractable: false,
              hintText: 'Date',
              isCompleteOveride: date != null,
              checkIfGood: TextFieldChecks().alwaysGood,
              resetUI: () {
                setState(() {});
              },
              verticalPadding: MediaQuery.of(context).size.height * 0.025,
              horizontalPadding: MediaQuery.of(context).size.height * 0.025,
              borderWidth: 1,
              borderRadius: 10,
              suffixIcon: MdiIcons.calendar,
              controller: dateController,
            ),
          ),
          Row(
            children: [
              UNLVTextfield(
                hintText: '(hh:mm AM/PM)',
                checkIfGood: TextFieldChecks().isTimeGood,
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
                checkIfGood: TextFieldChecks().isTimeGood,
                resetUI: () {
                  setState(() {});
                },
                hintText: '(hh:mm AM/PM)',
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
          UNLVImagePicker(
            onImageSelect: imageSelected,
          ),
          UNLVButton(
            isClickable: TextFieldChecks().isFirstNameGood(eventName.text) &&
                TextFieldChecks().isFirstNameGood(eventDescription.text) &&
                TextFieldChecks().isFirstNameGood(location.text) &&
                date != null && photo != null,
            ontap: () {},
            text: 'Create',
            horizontalPadding: MediaQuery.of(context).size.height * 0.025,
          )
        ],
      ),
    );
  }
}
