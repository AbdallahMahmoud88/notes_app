import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_app_bar.dart';

class EditsNoteViewBody extends StatelessWidget {
  const EditsNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomAppBar(title: 'Edit', icon: Icons.check),
          ],
        ),
      ),
    );
  }
}
