import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Cubits/Add_Note_Cubit/add_notes_cubit.dart';

import 'add_note_form.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddModalBottomSheet extends StatelessWidget {
  const AddModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return AddNotesCubit();
      },
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesFailure) {
            print('Failed ${state.errMessage}');
          }
          if (state is AddNotesSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNotesLoading ? true : false,
            // absorbing: true,
            child: SingleChildScrollView(child: AddNoteForm()),
          );
        },
      ),
    );
  }
}
