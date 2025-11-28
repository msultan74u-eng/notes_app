import 'package:flutter/material.dart';

import 'Widgets/Custom_Notes_ListView.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
      body:CustomNotesListview(),
    );
  }
}
