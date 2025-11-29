

import 'package:flutter/material.dart';

import 'Custom_Button.dart';
import 'Custom_Text_Field.dart';

class AddModalBottomSheet extends StatelessWidget {
  const AddModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: AddNoteForm(),
    );
  }
}



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
          CustomButton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                print('title: $title, subtitle: $subtitle');
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            }
          ),


        ],
      ),
    );
  }
}
