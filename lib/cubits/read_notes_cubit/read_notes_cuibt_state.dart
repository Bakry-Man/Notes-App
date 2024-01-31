part of 'read_notes_cuibt_cubit.dart';

@immutable
sealed class ReadNotesCuibtState {}

final class ReadNotesCuibtInitial extends ReadNotesCuibtState {}

final class ReadNotesCuibtLoading extends ReadNotesCuibtState {}

final class ReadNotesCuibtSuccess extends ReadNotesCuibtState {
  final List<NoteModel> notes;

  ReadNotesCuibtSuccess(this.notes);
}

final class ReadNotesCuibtFailure extends ReadNotesCuibtState {
  final String errMessage;

  ReadNotesCuibtFailure(this.errMessage);
}
