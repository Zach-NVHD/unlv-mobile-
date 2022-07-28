import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unlv_ceao_mobile_sign_in/Database/Scemas/event.dart';
import 'package:unlv_ceao_mobile_sign_in/constants.dart';
import 'package:unlv_ceao_mobile_sign_in/screen_names.dart';
import 'package:velocity_x/velocity_x.dart';

class UNLVEventTile extends StatefulWidget {
  UNLVEventTile({Key? key, required this.event}) : super(key: key);

  Event event;
  @override
  State<UNLVEventTile> createState() => _UNLVEventTileState();
}

class _UNLVEventTileState extends State<UNLVEventTile> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1,
          vertical: MediaQuery.of(context).size.width * 0.05,
        ),
        child: GestureDetector(
          onTap: () {
            context.vxNav.push(Uri.parse(ScreeNames.eventInfo));
          },
          child: Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: MediaQuery.of(context).size.width * 0.65,
              width: MediaQuery.of(context).size.width * 1.0,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: widget.event.image ??
                        Image.asset(
                          'Images/template_tile_image.png',
                          width: MediaQuery.of(context).size.width * 1.1,
                          height: MediaQuery.of(context).size.width * 0.5,
                          fit: BoxFit.fill,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Constants.heading(text: widget.event.title),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Constants.text(text: widget.event.start.toString()),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Constants.text(text: widget.event.location),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    widget.event.isActive ? const SizedBox() : Positioned.fill(
          child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1,
          vertical: MediaQuery.of(context).size.width * 0.05,
        ),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[200]!.withOpacity(0.4),
              borderRadius: BorderRadius.circular(10)),
        ),
      )),
    ]);
  }
}
