import 'package:flutter/material.dart';

class OfficialPosts extends StatelessWidget {
  const OfficialPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Official Posts From Games",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Colors.green, Colors.blue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                    "lib/assets/forza.jpg",
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
