import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/Custom_AppBar.dart';
import 'package:notes_app/Views/Widgets/Custom_Text_Field.dart';

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
        SizedBox(height: 50),
        CustomTextField(hintText: 'Title',),
        CustomTextField(hintText: 'Content', maxLines: 5,),
      ],
    );
  }
}
