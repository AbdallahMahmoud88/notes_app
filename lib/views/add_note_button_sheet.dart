import 'package:flutter/material.dart';
import 'package:notes/constants.dart';
import 'package:notes/views/custom_text_field.dart';
import 'package:notes/views/widgets/custom_button.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextField(hint: 'title'),
            SizedBox(height: 16),
            CustomTextField(hint: 'contnet', maxLines: 5),
            SizedBox(height: 32),
            CustomButton(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
