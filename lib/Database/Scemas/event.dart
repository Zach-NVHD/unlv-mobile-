import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Event {
  Event(
      {this.title = '',
      this.description = '',
      required this.start,
      required this.end,
      this.imageUrl = '',
      this.docId = '',
      this.isActive = false,
      this.location = ''});

  String title;
  String description;
  DateTime start;
  DateTime end;
  String location;
  String imageUrl;
  Image? image;
  bool isActive;
  String docId;

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'title': title,
      'description': description,
      'start': Timestamp.fromDate(start),
      'end': Timestamp.fromDate(end),
      'location': location,
      'isActive': isActive,
      'imageUrl': imageUrl,
    };
    return map;
  }

  void fromJson(Map<String, dynamic> map) {
    title = map['title'] ?? '';
    description = map['description'] ?? '';
    start = ((map['start'] ?? Timestamp.now()) as Timestamp).toDate();
    end = ((map['end'] ?? Timestamp.now()) as Timestamp).toDate();
    location = map['location'] ?? '';
    isActive = map['isActive'] ?? false;
    imageUrl = map['imageUrl'] ?? '';
  }

  String dateString(){
     final DateFormat formatter = DateFormat('MMMM dd, yyyy');
  final String formatted = formatter.format(start);
    return formatted;
  }

  String timeString(){
         final DateFormat formatter = DateFormat('hh:mm a');
  final String startString = formatter.format(start);
    final String endString = formatter.format(end);
    return startString + ' - ' + endString;
  }

  @override
  String toString() {
    return '''
    title: $title,
    description: $description
    start: $start
    end: $end,
    location: $location,
    imageUrl: $imageUrl
    isActive: $isActive
    image: $image,
    docId : $docId
''';
  }
}
