import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_button.dart';

import '../../Constants.dart';


class AccessPhotoPop extends StatelessWidget {
  const AccessPhotoPop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0))),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10),
          Icon(
            MdiIcons.camera,
            color: Constants.unlvRed,
            size: 80,
          ),
          SizedBox(height: 15),
          Text(
            'No Access to Camera',
            style: GoogleFonts.manrope(fontSize: 24, fontWeight: FontWeight.w800),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
          Text(
            'Please go to settings and enable camera access to use this feature',
            style: GoogleFonts.manrope(fontSize: 14),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          UNLVButton(
            isClickable: true,
              text: 'Settings',
              ontap: () async {
                await openAppSettings();
              })
        ],
      ),
    );
  }

  void showPopUp(BuildContext context) async {
    showDialog(context: context, builder: (context) => AccessPhotoPop());
  }
}
