import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynoteapp/cubits/notescubit/notescubit_cubit.dart';
import 'package:mynoteapp/widgets/add_bottom_sheet.dart';
import 'package:mynoteapp/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet();
                });
          },
          child: const Icon(Icons.add),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
