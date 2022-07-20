import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:unlv_ceao_mobile_sign_in/Database/Scemas/event.dart';

class EventDb {
  void addEvent(Event event) {
    FirebaseFirestore.instance.collection('Events').doc().set(event.toJson());
  }

  void updateEvent(Event event) {
    FirebaseFirestore.instance
        .collection('Events')
        .doc(event.docId)
        .update(event.toJson());
  }

  void deleteEvent(Event event) {
    FirebaseFirestore.instance.collection('Events').doc(event.docId).delete();
  }

  Future<List<Event>> getEvents() async {
    List<Event> events = [];
    await FirebaseFirestore.instance
        .collection('Events')
        .get()
        .then((documents) {
      for (var doc in documents.docs) {
        Map<String, dynamic> data = doc.data();
        Event event = Event(start: DateTime.now(), end: DateTime.now())
          ..fromJson(data);
        event.docId = doc.id;
        events.add(event);
      }
    });
    return events;
  }
}
