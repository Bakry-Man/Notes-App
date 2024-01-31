part of 'read_notes_cubit.dart';

@immutable
sealed class ReadNotesState {}

final class ReadNotesCuibtInitial extends ReadNotesState {}

final class ReadNotesCuibtLoading extends ReadNotesState {}

final class ReadNotesCuibtSuccess extends ReadNotesState {
  final List<NoteModel> notes;

  ReadNotesCuibtSuccess(this.notes);
}

final class ReadNotesCuibtFailure extends ReadNotesState {
  final String errMessage;

  ReadNotesCuibtFailure(this.errMessage);
}
