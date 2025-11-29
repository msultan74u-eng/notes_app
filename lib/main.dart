import 'package:flutter/material.dart';

import 'Views/Edit_Note_View.dart';
import 'Views/Home_Page.dart';



void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {HomePage.id: (context) => HomePage(),
        EditNoteView.id: (context) => EditNoteView(),

      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,fontFamily: 'Poppins'),

      initialRoute: HomePage.id,
    );
  }
}
