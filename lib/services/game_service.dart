import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:xboxapp/models/game_model.dart';

class GameService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  CollectionReference<Map<String, dynamic>> _getGamesCollection() {
    final String appId = String.fromEnvironment(
      "APP_ID",
      defaultValue: "default-app-id",
    );
    return _firestore
        .collection("artifacts")
        .doc(appId)
        .collection("public")
        .doc("data")
        .collection("games");
  }

  Future<void> _addGame(GameModel game) async {
    try {
      await _getGamesCollection().add(game.toMap());
      print("Game added to Firestore: ${game.title}");
    } catch (e) {
      print("Error adding game to Firestore: $e");
    }
  }
}
