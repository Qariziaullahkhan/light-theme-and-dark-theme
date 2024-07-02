import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/providers/Theme_provider';
import 'package:theme/providers/Theme_provider';
import 'package:theme/providers/Theme_provider';
import 'package:theme/views/Dark_theme_screen.dart';

import 'providers/Theme_provider';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> ThemeChanger()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
      
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Darkthemscreen(),
      ),
    );
  }
}

