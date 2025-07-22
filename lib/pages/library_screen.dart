import 'package:flutter/material.dart';
import 'package:xboxapp/components/top_appbar.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: CustomScrollView(
        slivers: [
          TopAppbar(
            imageUrl: "lib/assets/avatar.png",
            pageName: "My Library",
          ),
        ],
      ),
    );
  }
}
