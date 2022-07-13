import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unlv_ceao_mobile_sign_in/constants.dart';

class UNLVButton extends StatefulWidget {
  UNLVButton({
    Key? key,
    this.text,
    this.Width,
    this.Height,
    this.HorizontalPadding,
    this.VerticalPadding,
  }) : super(key: key);

  Text? text;
  double? Width;
  double? Height;
  double? VerticalPadding;
  double? HorizontalPadding; 

  @override
  State<UNLVButton> createState() => _UNLVButtonState();
}

class _UNLVButtonState extends State<UNLVButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Constants.unlvRed,
        child: SizedBox(
          width: widget.Width,
          height: widget.Height,
          child: widget.text!
          
          


        ));
  }
}
