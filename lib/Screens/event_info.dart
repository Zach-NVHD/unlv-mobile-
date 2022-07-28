import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unlv_ceao_mobile_sign_in/Database/Scemas/event.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_app_bar.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_button.dart';
import 'package:unlv_ceao_mobile_sign_in/constants.dart';
import 'package:unlv_ceao_mobile_sign_in/screen_names.dart';
import 'package:velocity_x/velocity_x.dart';

class EventInfo extends StatefulWidget {
  EventInfo({Key? key, required this.event}) : super(key: key);
  Event event;

  @override
  State<EventInfo> createState() => _EventInfoState();
}

class _EventInfoState extends State<EventInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UNLVAppBar(
        text: 'Event Info',
        showProfilePic: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1),
        child: ListView(
          children: [
            Image.asset(
              'Images/template_tile_image.png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
            Constants.heading(text: widget.event.title, align: TextAlign.left),
            Constants.text(
                align: TextAlign.left, text: widget.event.description),
            RichText(
              text: TextSpan(
                text: 'When:      ',
                style: GoogleFonts.manrope(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                children: <TextSpan>[
                  TextSpan(
                      text: widget.event.dateString(),
                      style: GoogleFonts.manrope(
                          fontSize: 18, fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.025),
            RichText(
              text: TextSpan(
                text: 'Time:      ',
                style: GoogleFonts.manrope(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                children: <TextSpan>[
                  TextSpan(
                      text: widget.event.timeString(),
                      style: GoogleFonts.manrope(
                          fontSize: 18, fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.025),
            RichText(
              text: TextSpan(
                text: 'Where:      ',
                style: GoogleFonts.manrope(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                children: <TextSpan>[
                  TextSpan(
                      text: widget.event.location,
                      style: GoogleFonts.manrope(
                          fontSize: 18, fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.025),
            UNLVButton(
              isClickable: true,
              ontap: () {
                context.vxNav.push(Uri.parse(ScreeNames.qrCodeScreen));
              },
              text: 'RSVP',
            )
          ],
        ),
      ),
    );
  }
}
