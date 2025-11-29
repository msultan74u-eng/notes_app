import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/Custom_AppBar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 45, 16, 0),
          child: CustomAppbar(
            title: 'Edit Note',
            icon: Icon(Icons.check, size: 28),
          ),
        ),
      ],
    );
  }
}
