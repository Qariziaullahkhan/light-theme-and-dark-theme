import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/providers/themeprovide.dart';
import 'package:theme/views/Dark_theme_screen.dart';
import 'providers/themeprovide.dart';

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
      child:Builder(builder: (BuildContext context){
        final themechanger =Provider.of<ThemeChanger>(context);
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          themeMode:themechanger.themeMode,
          theme: ThemeData(
            brightness: Brightness.light,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            appBarTheme:const AppBarTheme(
              backgroundColor: Colors.teal
            ),
          ),
          home: const Darkthemscreen(),
        );
      })
    );
  }
}

