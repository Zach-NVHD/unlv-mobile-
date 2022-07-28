import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:unlv_ceao_mobile_sign_in/Logic/authentication_brain.dart';
import 'package:unlv_ceao_mobile_sign_in/screen_names.dart';
import 'package:velocity_x/velocity_x.dart';

class UNLVProfileButton extends StatelessWidget {
  const UNLVProfileButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Authentication.isAdmin
        ? const SizedBox()
        : GestureDetector(
            onTap: () {
              context.vxNav.push(Uri.parse(ScreeNames.studentProfileScreen));
            },
            child: SvgPicture.asset('svgs/profile_pic.svg',
                color: Colors.white, height: 40, width: 40));
  }
}
