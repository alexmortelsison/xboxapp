import 'package:cloud_firestore/cloud_firestore.dart';

class GameModel {
  final String id;
  final String title;
  final String imageUrl;
  final bool isPopular;
  final bool recentlyAdded;
  final bool justPlayed;

  GameModel({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.isPopular,
    required this.recentlyAdded,
    required this.justPlayed,
  });

  factory GameModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;

    return GameModel(
      id: doc.id,
      title: data["title"],
      imageUrl: data["imageUrl"],
      isPopular: data["isPopular"],
      recentlyAdded: data["recentlyAdded"],
      justPlayed: data["justPlayed"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "title": title,
      "imageUrl": imageUrl,
      "isPopular": isPopular,
      "recentlyAdded": recentlyAdded,
      "justPlayed": justPlayed,
    };
  }
}
