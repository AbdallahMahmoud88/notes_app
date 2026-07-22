import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/custom_text_field.dart';
import 'package:notes/views/widgets/custom_app_bar.dart';

class EditsNoteViewBody extends StatefulWidget {
  const EditsNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditsNoteViewBody> createState() => _EditsNoteViewBodyState();
}

class _EditsNoteViewBodyState extends State<EditsNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomAppBar(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = content ?? widget.note.subTitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              title: 'Edit',
              icon: Icons.check,
            ),
            SizedBox(height: 50),

            CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hint: widget.note.title,
            ),
            SizedBox(height: 16),

            CustomTextField(
              onChanged: (value) {
                content = value;
              },
              hint: widget.note.subTitle,
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
