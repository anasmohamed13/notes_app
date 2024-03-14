import 'package:flutter/material.dart';

import '../constats.dart';
import '../models/note_model.dart';
import 'colors_listview.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int currentindex;
  @override
  void initState() {
    currentindex = klistColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: klistColors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentindex = index;
                widget.note.color = klistColors[index].value;

                setState(() {});
              },
              child: ColorItem(
                isActive: currentindex == index,
                color: klistColors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
