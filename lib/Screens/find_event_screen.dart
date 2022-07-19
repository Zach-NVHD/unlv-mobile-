import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_app_bar.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_event_tile.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_textfield.dart';

class FindEventScreen extends StatefulWidget {
  const FindEventScreen({Key? key}) : super(key: key);

  @override
  State<FindEventScreen> createState() => _FindEventScreenState();
}

class _FindEventScreenState extends State<FindEventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UNLVAppBar(
        text: 'Find Event',
      ),
      body: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 20,
        itemBuilder: (context, index) {
          if (index == 0) {
            return UNLVTextfield(
              hintText: 'Search...',
              verticalPadding: MediaQuery.of(context).size.height * 0.025,
              horizontalPadding: MediaQuery.of(context).size.height * 0.025,
              borderWidth: 1,
              suffixIcon: MdiIcons.magnify,
              borderRadius: 10,
              onChanged: (text) {
                //search
              },
            );
          }
          return UNLVEventTile();
        },
      ),
    );
  }
}
