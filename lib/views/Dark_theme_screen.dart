import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/providers/themeprovide.dart';
import 'package:theme/providers/themeprovide.dart';
import 'package:theme/providers/themeprovide.dart';

import '../providers/themeprovide.dart';

class Darkthemscreen extends StatefulWidget {
  const Darkthemscreen({super.key});

  @override
  State<Darkthemscreen> createState() => _DarkthemscreenState();
}

class _DarkthemscreenState extends State<Darkthemscreen> {
  @override
  Widget build(BuildContext context) {
    final themechanger = Provider.of<ThemeChanger>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Dark and Light Theme"),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: const Text("Light"),
              value: ThemeMode.light, 
              groupValue: themechanger.themeMode, 
              onChanged: themechanger.settheme),
          RadioListTile<ThemeMode>(
              title: const Text("Dark"),
              value: ThemeMode.dark,
              groupValue: themechanger.themeMode,
              onChanged: themechanger.settheme),
          RadioListTile<ThemeMode>(
              title: const Text("system"),
              value: ThemeMode.system,
              groupValue: themechanger.themeMode,
              onChanged: themechanger.settheme),
        ],
      ),
    );
  }
}
