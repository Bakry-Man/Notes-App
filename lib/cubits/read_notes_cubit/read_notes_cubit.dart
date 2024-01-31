import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/constats/const.dart';
import 'package:notesapp/models/note_model.dart';

part 'read_notes_state.dart';

class ReadNotesCuibt extends Cubit<ReadNotesState> {
  ReadNotesCuibt() : super(ReadNotesCuibtInitial());

  fetchAllNotes() async {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = notesBox.values.toList();
      emit(ReadNotesCuibtSuccess(notes));
    } catch (e) {
      emit(ReadNotesCuibtFailure(e.toString()));
    }
  }
}
