import 'package:unlv_ceao_mobile_sign_in/Database/Scemas/event.dart';
import 'package:unlv_ceao_mobile_sign_in/Logic/authentication_brain.dart';

class EventBrain {
  static List<Event> findEvents(String text, List<Event> eventsFromDB) {
    List<Event> events = [];
    for (var event in eventsFromDB) {
      //if the user is an admin or the event is shown add to list
      if (event.isActive || Authentication.isAdmin) {
        if (text == '') {
          events.add(event);
        } else {
          if (event.title.toLowerCase().contains(text.toLowerCase())) {
            events.add(event);
          }
        }
      }
    }
    return events;
  }
}
