import 'package:flutter/material.dart';
import 'package:mynoteapp/widgets/custom_app_bar.dart';
import 'package:mynoteapp/widgets/custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomAppbar(),
          NotesItem(),
        ],
      ),
    );
  }
}