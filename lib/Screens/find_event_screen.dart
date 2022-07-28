import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:unlv_ceao_mobile_sign_in/Database/Scemas/event.dart';
import 'package:unlv_ceao_mobile_sign_in/Logic/event_brain.dart';
import 'package:unlv_ceao_mobile_sign_in/Logic/text_field_checks.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_app_bar.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_event_tile.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_textfield.dart';
import 'package:unlv_ceao_mobile_sign_in/constants.dart';

class FindEventScreen extends StatefulWidget {
  const FindEventScreen({Key? key}) : super(key: key);

  @override
  State<FindEventScreen> createState() => _FindEventScreenState();
}

class _FindEventScreenState extends State<FindEventScreen> {
  String searchText = '';
  List<Event> events = Constants().events;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UNLVAppBar(
        text: 'Find Event',
        showProfilePic: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: EventBrain.findEvents(searchText, events).length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return UNLVTextfield(
              checkIfGood: TextFieldChecks().alwaysGood,
              resetUI: () {
                setState(() {});
              },
              hintText: 'Search...',
              verticalPadding: MediaQuery.of(context).size.height * 0.025,
              horizontalPadding: MediaQuery.of(context).size.height * 0.025,
              borderWidth: 1,
              suffixIcon: MdiIcons.magnify,
              borderRadius: 10,
              onChanged: (text) {
                searchText = text;
                //search
              },
            );
          }
          return UNLVEventTile(
            event: EventBrain.findEvents(searchText, events)[index - 1],
          );
        },
      ),
    );
  }
}
