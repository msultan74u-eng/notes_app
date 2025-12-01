



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Cubits/read_notes_cubit/read_notes_cubit.dart';
import '../../Models/NoteModel.dart';
import 'Custom_Notes_Item.dart';

  class CustomNotesListview extends StatelessWidget {
  const CustomNotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNotesCubit,ReadNotesState>(
      builder: (context,state){
        List<Notemodel> notes = BlocProvider.of<ReadNotesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return CustomNotesItem(note: notes[index],);
            },

          ),
        );
      }
    );
  }
}
