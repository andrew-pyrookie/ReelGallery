import 'package:flutter/material.dart';
import 'reel.dart';

class Home extends StatelessWidget {
  Home ({super.key});

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Home'),
        actions: [
          SearchBar(
            hintText: 'Search for local reel',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //navigate to the reel.dart screen
          Navigator.push(context, MaterialPageRoute(builder: (context) => Reel()));
        },
        child: const Icon(Icons.video_collection_outlined),
        backgroundColor: Colors.black,
        tooltip: 'Go home',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
