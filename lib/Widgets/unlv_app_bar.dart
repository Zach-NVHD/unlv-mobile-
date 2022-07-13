import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UNLVAppBar extends StatefulWidget with PreferredSizeWidget {
  UNLVAppBar({Key? key,
  this.appBarText,
  })
  : super(key: key);


  Text? appBarText; 

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
      title: widget.appBarText,
      titleTextStyle: TextStyle(fontFamily: ('Times'), fontSize: (20.0)),
    ));
  }
}
