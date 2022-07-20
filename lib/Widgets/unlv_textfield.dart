import 'package:flutter/material.dart';

class UNLVTextfield extends StatefulWidget {
  UNLVTextfield(
      {Key? key,
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

  @override
  State<UNLVTextfield> createState() => _UNLVTextfieldState();
}

class _UNLVTextfieldState extends State<UNLVTextfield> {
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
          shadowColor: Colors.black,
          elevation: 10,
          child: TextField(
            enabled: widget.isInteractable,
            keyboardType: TextInputType.emailAddress,
            controller: widget.controller,
            onChanged: widget.onChanged,
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
                        color: Colors.black,
                        width: widget.borderWidth,
                      ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(widget.borderRadius)),
                borderSide: widget.borderWidth == 0
                    ? BorderSide.none
                    : BorderSide(
                        color: Colors.black,
                        width: widget.borderWidth,
                      ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(widget.borderRadius)),
                borderSide: BorderSide(
                  color: Colors.black,
                  width: widget.borderWidth,
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
                widget.suffixIcon,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
