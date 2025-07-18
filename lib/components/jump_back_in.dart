import 'package:flutter/material.dart';
import 'package:xboxapp/components/jump_back_in_card.dart';
import 'package:xboxapp/models/jump_back_in_model.dart';

class JumpBackIn extends StatelessWidget {
  const JumpBackIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Jump back in",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        SizedBox(height: 8),
        SizedBox(
          height: 100,
          child: ListView.builder(
            itemCount: JumpBackInModel.getGames().length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final JumpBackInModel games = JumpBackInModel.getGames()[index];
              return JumpBackInCard(imageUrl: games.imageUrl);
            },
          ),
        ),
      ],
    );
  }
}
