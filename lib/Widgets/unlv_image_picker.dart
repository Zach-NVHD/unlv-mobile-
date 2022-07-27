import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_access_permission_popup.dart';

class UNLVImagePicker extends StatefulWidget {
  UNLVImagePicker({Key? key, required this.onImageSelect}) : super(key: key);

  Function(File) onImageSelect;
  @override
  State<UNLVImagePicker> createState() => _UNLVImagePickerState();
}

class _UNLVImagePickerState extends State<UNLVImagePicker> {
  File? image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GestureDetector(
        onTap: () async {
          var granted = await Permission.photos.isGranted;
          var denied = await Permission.photos.isPermanentlyDenied;
          final picker = ImagePicker();

          if (granted) {
            //one user picks a file or does not thats why its optional returned the picked file

            PickedFile? pickedFile = await picker.getImage(
                source: ImageSource.gallery, maxHeight: 300, maxWidth: 300);
                if(pickedFile != null){
            //the videos is equal to the video of this path (The path on the iphone to get the video fnjdskj/fkdhkjdhjkds/name.mov)
            File photo = File(pickedFile.path);
            //this is the file name without all the /folder/file/folder in front of it
            //simply shows user the file picker (optionaL)
            setState(() {
              image = photo;
            });
            widget.onImageSelect(photo);
                }
          } else if (denied) {
            AccessPhotoPop().showPopUp(context);
          } else {
            await Permission.photos.request();
          }
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: image != null
              ? Image.file(image!)
              : Image.asset('Images/upload_photo_background.png'),
        ),
      ),
    );
  }
}
