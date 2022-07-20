import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:unlv_ceao_mobile_sign_in/Database/Scemas/event.dart';
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
          return UNLVEventTile(
            event: Event(
                start: DateTime.now(),
                isActive: true,
                end: DateTime.now().add(const Duration(hours: 2)),
                location: 'UNLV Office',
                description:
                    '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer luctus mauris elit, quis mattis tortor laoreet eu. Suspendisse interdum semper vehicula. Ut bibendum egestas commodo. 

Donec nec quam sit amet augue molestie vehicula a sit amet nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean sed semper orci, eget ullamcorper dolor. 

Sed mi sem, cursus at sodales id, vestibulum laoreet sem. Nunc tristique imperdiet tortor at efficitur. Vestibulum id posuere neque, quis commodo nunc. Proin quis tempus erat. Fusce auctor viverra nibh, sit amet molestie mauris sollicitudin sed. Duis cursus diam vel nulla commodo eleifend. Orci varius natoque penatibus et magnis dis parturient.'''),
          );
        },
      ),
    );
  }
}
