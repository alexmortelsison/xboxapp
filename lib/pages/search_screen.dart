import 'package:flutter/material.dart';
import 'package:xboxapp/components/top_appbar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: CustomScrollView(
        slivers: [
          TopAppbar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Search",
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: SearchBar(
                      hintText: "Search",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
