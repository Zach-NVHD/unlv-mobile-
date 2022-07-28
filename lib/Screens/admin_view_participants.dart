import 'package:flutter/material.dart';
import 'package:unlv_ceao_mobile_sign_in/Database/Scemas/event.dart';
import 'package:unlv_ceao_mobile_sign_in/Widgets/unlv_app_bar.dart';
import 'package:unlv_ceao_mobile_sign_in/constants.dart';

class AdminViewParticipants extends StatefulWidget {
  AdminViewParticipants({Key? key, required this.event}) : super(key: key);
  Event event;

  @override
  State<AdminViewParticipants> createState() => _AdminViewParticipantsState();
}

class _AdminViewParticipantsState extends State<AdminViewParticipants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UNLVAppBar(
        text: 'Participants',
      ),
      body: ListView.builder(
        itemCount: widget.event.participants.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.width * 0.025,
                horizontal: MediaQuery.of(context).size.width * 0.125),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Constants.heading(
                    align: TextAlign.left,
                    text: widget.event.participants[index].first +
                        ' ' +
                        widget.event.participants[index].last),
                subtitle: Constants.text(
                    align: TextAlign.left,
                    text: widget.event.participants[index].major +
                        '\n' +
                        widget.event.participants[index].gradeLevel.toString()),
                isThreeLine: true,
              ),
            ),
          );
        },
      ),
    );
  }
}
