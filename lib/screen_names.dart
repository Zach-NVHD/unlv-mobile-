import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class ScreeNames {
  static String adminSignIn = '/AdminSignIn';
  static String createEvent = '/CreateEvent';
  static String eventCheckIn = '/EventCheckIn';
  static String eventInfo = '/Events/Event';
  static String findEvent = '/Events';
  static String welcome = '/';
  static String studentSignInScreen = '/StudentSignIn';
  static String qrCodeScreen = '/QrCode';

  static void changeScreens(
      BuildContext context, String screenName, Map<String, dynamic>? parms) {
    context.vxNav.push(Uri.parse(screenName), params: parms);
  }
}
