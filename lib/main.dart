import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/constats/const.dart';
import 'package:notesapp/views/edit_note_view.dart';
import 'package:notesapp/views/home_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'EditNoteView': (context) => const EditNoteView(),
      },
      initialRoute: 'HomeView',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      home: HomeView(),
    );
  }
}
