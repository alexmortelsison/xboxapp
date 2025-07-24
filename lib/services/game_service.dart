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

  Future<void> addGame(GameModel game) async {
    try {
      await _getGamesCollection().add(game.toMap());
      print("Game added to Firestore: ${game.title}");
    } catch (e) {
      print("Error adding game:$e");
    }
  }

  Stream<List<GameModel>> getGamesStream() {
    return _getGamesCollection().snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => GameModel.fromFirestore(doc)).toList();
    });
  }

  Future<void> updateGame(GameModel game) async {
    try {
      await _getGamesCollection().doc(game.id).update(game.toMap());
      print("Game updated in Firestore: ${game.title} (ID:${game.id})");
    } catch (e) {
      print("Error updating game in Firestore:$e");
    }
  }

  Future<void> deleteGame(String gameId) async {
    try {
      await _getGamesCollection().doc(gameId).delete();
      print("Game deleted in Firestore: $gameId");
    } catch (e) {
      print("Error deleting game: $gameId");
    }
  }
}
