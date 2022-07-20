import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class ImageDb {
  static Future<Image> loadFromStorage(
      BuildContext context, String image, BoxFit? fit) async {
    Image _toBeReturned = Image.asset('Images/Template_STL.png', fit: fit);
    String networkURl = await FirebaseStorage.instance
        .ref()
        .child(image)
        .getDownloadURL()
        .onError((error, stackTrace) {
      return '';
    });

    if (networkURl == '') {
      return Image.asset('Images/Template_STL.png');
    }

    return Image.network(
      networkURl,
      fit: fit,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
    );
  }

  static Future<String> getDownloadUrl(String url) async {
    print(url);
    String networkURl =
        await FirebaseStorage.instance.ref().child(url).getDownloadURL();
    return networkURl;
  }
}
