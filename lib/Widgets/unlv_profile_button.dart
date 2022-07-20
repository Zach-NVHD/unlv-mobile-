import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:unlv_ceao_mobile_sign_in/screen_names.dart';
import 'package:velocity_x/velocity_x.dart';

class UNLVProfileButton extends StatelessWidget {
  const UNLVProfileButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.vxNav.push(Uri.parse(ScreeNames.studentProfileScreen));
      },
      child: const Icon(MdiIcons.bagPersonal, size: 50, color: Colors.white),
    );
  }
}