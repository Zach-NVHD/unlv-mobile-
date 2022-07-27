import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unlv_ceao_mobile_sign_in/constants.dart';

class UNLVButton extends StatefulWidget {
  UNLVButton(
      {Key? key,
      required this.ontap,
      this.text,
      this.width,
      this.height,
      this.horizontalPadding,
      this.verticalPadding,
      this.fontSize = 20,
      this.isClickable = false,
      this.borderRadius = 10})
      : super(key: key);

  String? text;
  double? width;
  double? height;
  double? verticalPadding;
  double? horizontalPadding;
  VoidCallback ontap;
  double? buttonVerticalPadding;
  double? buttonHorizontalPadding;
  double borderRadius;
  double fontSize;
  bool isClickable;

  @override
  State<UNLVButton> createState() => _UNLVButtonState();
}

class _UNLVButtonState extends State<UNLVButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: widget.verticalPadding ?? 0,
          horizontal: widget.horizontalPadding ?? 0),
      child: Container(
          decoration: BoxDecoration(
              color: widget.isClickable == false
                  ? Colors.grey[400]
                  : Constants.unlvRed,
              borderRadius: BorderRadius.circular(widget.borderRadius)),
          child: SizedBox(
              width: widget.width,
              height: widget.height,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: widget.buttonVerticalPadding ?? 0,
                    horizontal: widget.buttonHorizontalPadding ?? 0),
                child: TextButton(
                  onPressed: widget.isClickable == false ? null : widget.ontap,
                  child: Constants.text(
                      text: widget.text ?? '',
                      color: Colors.white,
                      weight: FontWeight.w900,
                      fontSize: widget.fontSize),
                ),
              ))),
    );
  }
}
