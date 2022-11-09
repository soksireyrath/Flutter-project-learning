import 'package:flutter/material.dart';
import 'package:flutter_tesing_project/learning_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: (() {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) {
                return const LearningFlutter();
              }),
            );
          }),
          child: const Text("Learning Flutter")),
    );
  }
}
