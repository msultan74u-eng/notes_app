import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Models/NoteModel.dart';

import '../../Constants/Constants.dart';

part 'read_notes_state.dart';

// class ReadNotesCubit extends Cubit<ReadNotesState> {
//   ReadNotesCubit() : super(ReadNotesInitial());
//
//   List<Notemodel>? notes;
//
//   fetchNotes() async {
//     var noteBox = Hive.box<Notemodel>(kNotesBox);
//     notes = noteBox.values.toList();
//     emit(ReadNotesSuccess(notes!));
//   }
// }



class ReadNotesCubit extends Cubit<ReadNotesState> {
  ReadNotesCubit() : super(ReadNotesInitial()) {
    fetchNotes(); // يتم استدعاؤها تلقائيًا مرة واحدة
  }

  List<Notemodel>? notes;

  Future<void> fetchNotes() async {
    // emit(ReadNotesLoading());

    var noteBox = Hive.box<Notemodel>(kNotesBox);
    notes = noteBox.values.toList();

    emit(ReadNotesSuccess(notes!));
  }
}
