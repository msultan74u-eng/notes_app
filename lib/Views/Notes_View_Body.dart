import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Views/Widgets/Add_Modal_Bottom_Sheet.dart';

import '../Cubits/read_notes_cubit/read_notes_cubit.dart';
import 'Widgets/Custom_Notes_ListView.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,

            context: context,
            builder: (context) {
              return AddModalBottomSheet();
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body: CustomNotesListview(),
    );
  }
}
