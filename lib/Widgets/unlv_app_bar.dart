import 'package:flutter/cupertino.dart';

class UNLVAppBar extends StatefulWidget with PreferredSizeWidget {
  const UNLVAppBar({Key? key}) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(70);

  @override
  State<UNLVAppBar> createState() => _UNLVAppBarState();
}

class _UNLVAppBarState extends State<UNLVAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
