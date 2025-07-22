import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final String? name;
  final int? gscore;
  final int? trophyScore;
  final bool hideGScore;
  final bool hideTrophyScore;
  final bool hideName;
  final String? pageName;
  final String? userName;
  const MyWidget({
    super.key,
    required this.name,
    this.gscore = 785,
    this.trophyScore = 503,
    this.hideGScore = false,
    this.hideTrophyScore = false,
    this.hideName = false,
    this.pageName,
    this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        !hideName ? Text(userName!) : Text(pageName!),
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Text("G"),
            ),
            SizedBox(width: 2),
            if (!hideGScore) Text("$gscore"),
            SizedBox(width: 4),
            Icon(
              Icons.emoji_events_outlined,
              color: Colors.white,
            ),
            SizedBox(width: 2),
            if (!hideTrophyScore) Text("$trophyScore"),
          ],
        ),
      ],
    );
  }
}
