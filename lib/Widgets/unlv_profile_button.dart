import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class UNLVProfileButton extends StatelessWidget {
  const UNLVProfileButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: const Icon(MdiIcons.bagPersonal, size: 50, color: Colors.white),
    );
  }
}