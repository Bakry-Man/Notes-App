import 'package:flutter/material.dart';

class NoteModel {
  final String noteTitle;
  final String noteDesc;
  final Color color;

  NoteModel(this.color, {required this.noteDesc, required this.noteTitle});
}
