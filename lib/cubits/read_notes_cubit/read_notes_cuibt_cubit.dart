import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/models/note_model.dart';

part 'read_notes_cuibt_state.dart';

class ReadNotesCuibtCubit extends Cubit<ReadNotesCuibtState> {
  ReadNotesCuibtCubit() : super(ReadNotesCuibtInitial());
}
