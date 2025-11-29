import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'Constants/Constants.dart';
import 'Cubits/Add_Note_Cubit/add_notes_cubit.dart';
import 'Cubits/Simple_Bloc_Opserver.dart';
import 'Models/NoteModel.dart';
import 'Views/Edit_Note_View.dart';
import 'Views/Home_Page.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NotemodelAdapter());
  await Hive.openBox<Notemodel>(kNotesBox);
  Bloc.observer = SimpleBlocOpserver();

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.id: (context) => HomePage(),
        EditNoteView.id: (context) => EditNoteView(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),

      initialRoute: HomePage.id,
    );
  }
}
