import 'package:flutter/material.dart';

import 'Views/Home_Page.dart';



void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {HomePage.id: (context) => HomePage()},
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,fontFamily: 'Poppins'),

      initialRoute: HomePage.id,
    );
  }
}
