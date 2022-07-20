import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_app_bar.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_button.dart';
import 'package:unlv_ceao_mobile_sign_in/constants.dart';
import 'package:unlv_ceao_mobile_sign_in/screen_names.dart';
import 'package:velocity_x/velocity_x.dart';

class EventInfo extends StatefulWidget {
  const EventInfo({Key? key}) : super(key: key);

  @override
  State<EventInfo> createState() => _EventInfoState();
}

class _EventInfoState extends State<EventInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UNLVAppBar(
        text: 'Event Info',
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
            Constants.heading(text: 'Event Name'),
            Constants.text(align: TextAlign.left, text: '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer luctus mauris elit, quis mattis tortor laoreet eu. Suspendisse interdum semper vehicula. Ut bibendum egestas commodo. 

Donec nec quam sit amet augue molestie vehicula a sit amet nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean sed semper orci, eget ullamcorper dolor. 

Sed mi sem, cursus at sodales id, vestibulum laoreet sem. Nunc tristique imperdiet tortor at efficitur. Vestibulum id posuere neque, quis commodo nunc. Proin quis tempus erat. Fusce auctor viverra nibh, sit amet molestie mauris sollicitudin sed. Duis cursus diam vel nulla commodo eleifend. Orci varius natoque penatibus et magnis dis parturient.
'''),
            RichText(
              text: TextSpan(
                text: 'When:      ',
                style: GoogleFonts.manrope(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                children: <TextSpan>[
                  TextSpan(
                      text: 'August 20, 2022',
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
                      text: '12:00PM -> 6:00PM',
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
                      text: 'UNLV Office',
                      style: GoogleFonts.manrope(
                          fontSize: 18, fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.025),
            UNLVButton(
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
