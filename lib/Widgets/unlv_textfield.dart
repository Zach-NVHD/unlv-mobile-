import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:unlv_ceao_mobile_sign_in/constants.dart';

class UNLVTextfield extends StatefulWidget {
  UNLVTextfield(
      {Key? key,
      required this.checkIfGood,
      required this.resetUI,
      this.controller,
      this.onChanged,
      this.isObscure = false,
      this.verticalPadding = 0,
      this.hintText = '',
      this.prefixIcon,
      this.width,
      this.suffixIcon,
      this.horizontalPadding = 0,
      this.onSumbit,
      this.isInteractable = true,
      this.borderRadius = 0,
      this.borderWidth = 0})
      : super(key: key);

  TextEditingController? controller;
  double verticalPadding;
  String hintText;
  bool isInteractable;
  IconData? prefixIcon;
  IconData? suffixIcon;
  double borderWidth;
  double borderRadius;
  bool isObscure;
  double? width;
  double horizontalPadding;
  Function(String)? onChanged;
  Function(String)? onSumbit;
  VoidCallback resetUI;
  Function(String) checkIfGood;

  @override
  State<UNLVTextfield> createState() => _UNLVTextfieldState();
}

class _UNLVTextfieldState extends State<UNLVTextfield> {
  bool isComplete = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: widget.verticalPadding,
            horizontal: widget.horizontalPadding),
        child: Material(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          shadowColor: isComplete ? Constants.unlvRed : Colors.black,
          elevation: 10,
          child: TextField(
            enabled: widget.isInteractable,
            keyboardType: TextInputType.emailAddress,
            controller: widget.controller,
            onChanged: (text) {
              if (widget.onChanged != null) {
                widget.onChanged!(text);
              }
              setState(() {
                isComplete = widget.checkIfGood(text);
                print(isComplete);
              });
              widget.resetUI();
            },
            maxLength: 1000,
            obscureText: widget.isObscure,
            decoration: InputDecoration(
              counterText: '',
              disabledBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(widget.borderRadius)),
                borderSide: widget.borderWidth == 0
                    ? BorderSide.none
                    : BorderSide(
                        color: isComplete ? Constants.unlvRed : Colors.black,
                        width: isComplete ? 2 : widget.borderWidth,
                      ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(widget.borderRadius)),
                borderSide: widget.borderWidth == 0
                    ? BorderSide.none
                    : BorderSide(
                        color: isComplete ? Constants.unlvRed : Colors.black,
                        width: isComplete ? 2 : widget.borderWidth,
                      ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(widget.borderRadius)),
                borderSide: BorderSide(
                  color: isComplete ? Constants.unlvRed : Colors.black,
                  width: isComplete ? 2 : widget.borderWidth,
                ),
              ),
              fillColor: Colors.white,
              filled: true,
              hintText: widget.hintText,
              hintStyle: TextStyle(),
              prefixIcon: widget.prefixIcon == null
                  ? null
                  : Icon(
                      widget.prefixIcon,
                      color: Colors.grey,
                    ),
              suffixIcon: Icon(
                isComplete ? MdiIcons.check : widget.suffixIcon,
                size: 35,
                color: isComplete ? Constants.unlvRed : Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
