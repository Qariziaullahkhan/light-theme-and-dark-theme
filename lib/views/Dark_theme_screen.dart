import 'package:flutter/material.dart';

class Darkthemscreen extends StatefulWidget {
  const Darkthemscreen({super.key});

  @override
  State<Darkthemscreen> createState() => _DarkthemscreenState();
}

class _DarkthemscreenState extends State<Darkthemscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.red,
        title: const Text("Dark and Light Theme"),
      ),
    );
  }
}
