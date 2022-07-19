import 'package:flutter/material.dart';

class UNLVImagePicker extends StatefulWidget {
  const UNLVImagePicker({Key? key}) : super(key: key);

  @override
  State<UNLVImagePicker> createState() => _UNLVImagePickerState();
}

class _UNLVImagePickerState extends State<UNLVImagePicker> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Image.asset('Images/upload_photo_background.png'),
        ),
      ),
    );
  }
}
