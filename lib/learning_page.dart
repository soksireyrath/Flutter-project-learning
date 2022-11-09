import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LearningFlutter extends StatefulWidget {
  const LearningFlutter({super.key});

  @override
  State<LearningFlutter> createState() => _LearningFlutterState();
}

class _LearningFlutterState extends State<LearningFlutter> {
  int currentSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learning Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.menu_book), label: ("Book")),
          NavigationDestination(
              icon: Icon(Icons.video_call_sharp), label: ("Tutorial")),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentSelected = index;
          });
        },
        selectedIndex: currentSelected,
      ),
    );
  }
}
