import 'package:flutter/material.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/widgets/edits_note_view_body.dart';

class EditsNoteView extends StatelessWidget {
  const EditsNoteView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditsNoteViewBody(note: note));
  }
}
