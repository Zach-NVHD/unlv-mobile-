import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unlv_ceao_mobile_sign_in/Database/Scemas/event.dart';

String templateText =
    '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer luctus mauris elit, quis mattis tortor laoreet eu. Suspendisse interdum semper vehicula. Ut bibendum egestas commodo. 

Donec nec quam sit amet augue molestie vehicula a sit amet nisl. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean sed semper orci, eget ullamcorper dolor. 

Sed mi sem, cursus at sodales id, vestibulum laoreet sem. Nunc tristique imperdiet tortor at efficitur. Vestibulum id posuere neque, quis commodo nunc. Proin quis tempus erat. Fusce auctor viverra nibh, sit amet molestie mauris sollicitudin sed. Duis cursus diam vel nulla commodo eleifend. Orci varius natoque penatibus et magnis dis parturient.''';

class Constants {
  static var unlvRed = const Color(0xFFDA2727);
  static var unlvWhite = const Color(0xFFFFFFFF);
  static var unlvBlack = const Color(0xFF000000);
  static var unlvLightGrey = const Color(0xFFd8dcdc);
  static var unlvDarkGrey = const Color(0xFF383434);

  static Text heading(
      {String text = '',
      double fontSize = 12,
      FontWeight weight = FontWeight.w800,
      Color color = Colors.black,
      double? height,
      TextAlign align = TextAlign.center}) {
    return Text(text,
        textAlign: align,
        style: GoogleFonts.montserrat(
            fontSize: fontSize,
            fontWeight: weight,
            color: color,
            height: height));
  }

  static Text text(
      {String text = '',
      double fontSize = 12,
      FontWeight weight = FontWeight.w800,
      Color color = Colors.black,
      double? height,
      TextAlign align = TextAlign.center}) {
    return Text(text,
        textAlign: align,
        style: GoogleFonts.manrope(
            fontSize: fontSize,
            fontWeight: weight,
            color: color,
            height: height));
  }

  List<Event> events = [
    Event(
        start: DateTime(2022, 9, 22, 7, 30),
        end: DateTime(2022, 9, 22, 9, 30),
        description: templateText,
        title: 'Test Event 1',
        isActive: true,
        location: '123 Seamse Street Las Vegas NV'),
    Event(
        start: DateTime(2022, 9, 24, 9, 30),
        end: DateTime(2022, 9, 24, 11, 30),
        description: templateText,
        title: 'Test Event 2',
        location: '123 Seamse Street Las Vegas NV'),
    Event(
        start: DateTime(2022, 9, 24, 9, 30),
        end: DateTime(2022, 9, 24, 11, 30),
        description: templateText,
        title: 'Test Event 3',
        isActive: true,
        location: '123 Seamse Street Las Vegas NV'),
    Event(
        start: DateTime(2022, 9, 24, 9, 30),
        end: DateTime(2022, 9, 24, 11, 30),
        description: templateText,
        title: 'Test Event 4',
        location: '123 Seamse Street Las Vegas NV'),
    Event(
        start: DateTime(2022, 9, 24, 9, 30),
        end: DateTime(2022, 9, 24, 11, 30),
        description: templateText,
        title: 'Test Event 5',
        location: '123 Seamse Street Las Vegas NV'),
    Event(
        start: DateTime(2022, 9, 24, 9, 30),
        end: DateTime(2022, 9, 24, 11, 30),
        description: templateText,
        title: 'Test Event 6',
        location: '123 Seamse Street Las Vegas NV'),
  ];
}
