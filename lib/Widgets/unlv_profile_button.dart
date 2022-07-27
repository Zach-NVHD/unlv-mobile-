import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:unlv_ceao_mobile_sign_in/custom_icons.dart';
import 'package:unlv_ceao_mobile_sign_in/screen_names.dart';
import 'package:velocity_x/velocity_x.dart';

class UNLVProfileButton extends StatelessWidget {
  const UNLVProfileButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.vxNav.push(Uri.parse(ScreeNames.studentProfileScreen));
      },
      child: const Icon(MyFlutterApp.account2, size: 40, color: Colors.white),
    );
  }
}
