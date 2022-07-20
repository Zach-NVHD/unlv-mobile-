import 'package:flutter/material.dart';
import 'package:unlv_ceao_mobile_sign_in/Screens/admIn_sign_in.dart';
import 'package:unlv_ceao_mobile_sign_in/Screens/admin_dashboard_screen.dart';
import 'package:unlv_ceao_mobile_sign_in/Screens/admin_view_participants.dart';
import 'package:unlv_ceao_mobile_sign_in/Screens/create_event_screen.dart';
import 'package:unlv_ceao_mobile_sign_in/Screens/event_check_in_screen.dart';
import 'package:unlv_ceao_mobile_sign_in/Screens/event_info.dart';
import 'package:unlv_ceao_mobile_sign_in/Screens/find_event_screen.dart';
import 'package:unlv_ceao_mobile_sign_in/Screens/qr_code_screen.dart';
import 'package:unlv_ceao_mobile_sign_in/Screens/student_profile_screen.dart';
import 'package:unlv_ceao_mobile_sign_in/Screens/student_sign_in_screen.dart';
import 'package:unlv_ceao_mobile_sign_in/Screens/welcome_screen.dart';
import 'package:unlv_ceao_mobile_sign_in/screen_names.dart';
import 'package:velocity_x/velocity_x.dart';

void main() async {
  // await Firebase.initializeApp();

  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyObs extends VxObserver {
  @override
  void didChangeRoute(Uri route, Page page, String pushOrPop) {
    print("${route.path} - $pushOrPop");
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routeInformationParser: VxInformationParser(),
        title: 'UNLV CAEO',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        routerDelegate: VxNavigator(observers: [
          MyObs()
        ], routes: {
          ScreeNames.welcome: (uri, param) {
            return const MaterialPage(child: WelcomeScreen());
          },
          ScreeNames.adminSignIn: (uri, param) {
            return const MaterialPage(child: AdminSignUpScreen());
          },
          ScreeNames.createEvent: (uri, param) {
            return const MaterialPage(child: CreateEventScreen());
          },
          ScreeNames.eventCheckIn: (uri, param) {
            return const MaterialPage(child: EventCheckInScreen());
          },
          ScreeNames.eventInfo: (uri, param) {
            return const MaterialPage(child: EventInfo());
          },
          ScreeNames.findEvent: (uri, param) {
            return const MaterialPage(child: FindEventScreen());
          },
          ScreeNames.qrCodeScreen: (uri, param) {
            return const MaterialPage(child: QRCodeScreen());
          },
          ScreeNames.studentSignInScreen: (uri, param) {
            return const MaterialPage(child: StudentSignInScreen());
          },
          ScreeNames.adminSignIn: (uri, param) {
            return const MaterialPage(child: AdminSignUpScreen());
          },
          ScreeNames.viewEventParticipants: (uri, param) {
            return const MaterialPage(child: AdminViewParticipants());
          },
          ScreeNames.adminDashboard: (uri, param) {
            return const MaterialPage(child: AdminDashboardScreen());
          },
           ScreeNames.studentProfileScreen: (uri, param) {
            return const MaterialPage(child: StudentProfileScreen());
          },
        }));
  }
}
