import 'package:flutter/material.dart';

class TopAppbar extends StatelessWidget {
  const TopAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      backgroundColor: const Color.fromARGB(183, 63, 63, 63),
      toolbarHeight: 60,
      title: Padding(
        padding: const EdgeInsets.only(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("lib/assets/avatar.png"),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Dr.Mort",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: const [
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.white,
                          child: Text("G", style: TextStyle(fontSize: 8)),
                        ),
                        SizedBox(width: 4),
                        Text(
                          "785",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.emoji_events_outlined,
                          color: Colors.white,
                          size: 18,
                        ),
                        Text(
                          "503",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const Icon(
              Icons.notifications_outlined,
              color: Colors.white,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
