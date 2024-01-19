import 'package:flutter/material.dart';

class NoteModel {
  final String noteTitle;
  final String noteContent;
  final int color;
  final String date;

  NoteModel(
      {required this.noteTitle,
      required this.noteContent,
      required this.color,
      required this.date});
}
