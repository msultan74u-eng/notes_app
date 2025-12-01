part of 'read_notes_cubit.dart';

@immutable
sealed class ReadNotesState {}

final class ReadNotesInitial extends ReadNotesState {}
final class ReadNotesLoading extends ReadNotesState {}
final class ReadNotesSuccess extends ReadNotesState {
  final List<Notemodel> notes;

  ReadNotesSuccess(this.notes);
}
final class ReadNotesFailure extends ReadNotesState {
  final String errMessage;

  ReadNotesFailure([this.errMessage = 'Something went wrong, please try again']);
}
