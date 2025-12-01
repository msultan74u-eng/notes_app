

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Cubits/Add_Note_Cubit/add_notes_cubit.dart';
import '../../Models/NoteModel.dart';
import 'Custom_Button.dart';
import 'Custom_Text_Field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title ,subtitle;



  @override
  Widget build(BuildContext context) {
    return Form(
      ///                    the key
      key: formkey,
      autovalidateMode: autovalidateMode,

      child: Column(
        children: [
          SizedBox(height: 32),
          CustomTextField(hintText: 'Title',onSaved: (value){
            title = value;
          },),
          CustomTextField(hintText: 'Content',maxLines: 5,onSaved: (value){
            subtitle = value;
          },),
          SizedBox(height: 32),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return CustomButton(
                  isLoading: state is AddNotesLoading ? true : false,
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();


                      var note = Notemodel(
                        title: title!,
                        subtitle: subtitle!,
                        date: DateTime.now().toString(),
                        color: Color(0xff62fcd7).value,
                      );
                      BlocProvider.of<AddNotesCubit>(context).addNote(note);


                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  }
              );
            }
          ),
          SizedBox(height: 20),



        ],
      ),
    );
  }
}
