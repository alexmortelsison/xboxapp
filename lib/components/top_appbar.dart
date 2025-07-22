import 'package:flutter/material.dart';

class TopAppbar extends StatelessWidget {
  final String? pageName;
  final String? userName;
  final String imageUrl;
  final int? trophyScore;
  final int? gScore;
  final IconData? icon1;
  final IconData? icon2;
  final bool hideUserName;
  final bool hideTrophyScore;
  final bool hideGScore;
  final bool hideIcon2;
  const TopAppbar({
    super.key,
    this.pageName,
    this.userName,
    required this.imageUrl,
    this.trophyScore,
    this.gScore,
    this.icon1,
    this.icon2,
    this.hideUserName = false,
    this.hideTrophyScore = false,
    this.hideGScore = false,
    this.hideIcon2 = false,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.grey.shade800,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(imageUrl),
              ),
              SizedBox(width: 4),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (!hideUserName && userName != null)
                    Text(
                      userName!,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )
                  else if (pageName != null)
                    Text(
                      pageName!,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  else
                    SizedBox.shrink(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (!hideGScore && gScore != null)
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 8,
                          child: Text(
                            "G",
                            style: TextStyle(fontSize: 10),
                          ),
                        )
                      else
                        SizedBox.shrink(),
                      SizedBox(width: 2),
                      if (!hideGScore && gScore != null)
                        Text(
                          "$gScore",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        )
                      else
                        SizedBox.shrink(),
                      SizedBox(width: 2),
                      if (!hideTrophyScore && trophyScore != null)
                        Icon(
                          Icons.emoji_events_outlined,
                          color: Colors.white,
                          size: 16,
                        ),
                      SizedBox(width: 2),
                      if (!hideTrophyScore && trophyScore != null)
                        Text(
                          "$trophyScore",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      else
                        SizedBox.shrink(),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                icon1,
                color: Colors.white,
                size: 18,
              ),
              SizedBox(width: 8),
              !hideIcon2
                  ? Icon(
                      icon2,
                      color: Colors.white,
                      size: 18,
                    )
                  : SizedBox.shrink(),
            ],
          ),
        ],
      ),
    );
  }
}
