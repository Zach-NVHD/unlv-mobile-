import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_profile_button.dart';
import 'package:unlv_ceao_mobile_sign_in/constants.dart';
import 'package:velocity_x/velocity_x.dart';

class UNLVAppBar extends StatefulWidget with PreferredSizeWidget {
  UNLVAppBar(
      {Key? key,
      this.fontSize = 20,
      this.text = '',
      this.showBackButton = true,
      this.showProfilePic = false})
      : super(key: key);

  String text;
  double fontSize;
  bool showBackButton;
  bool showProfilePic;

  @override
  Size get preferredSize => Size.fromHeight(70);

  @override
  State<UNLVAppBar> createState() => _UNLVAppBarState();
}

class _UNLVAppBarState extends State<UNLVAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      foregroundColor: Constants.unlvRed,
      backgroundColor: Constants.unlvRed,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: widget.showProfilePic
              ? const UNLVProfileButton()
              : const SizedBox(),
        )
      ],
      leading: widget.showBackButton
          ? GestureDetector(
              onTap: () {
                context.vxNav.pop();
              },
              child: const Icon(MdiIcons.chevronLeft,
                  color: Colors.white, size: 50))
          : const SizedBox(),
      title: Constants.heading(
          text: widget.text,
          color: Colors.white,
          fontSize: widget.fontSize,
          weight: FontWeight.w800),
    ));
  }
}
