import 'package:flutter/material.dart';

import '../../Constants/Constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,this.onTap,this.isLoading=false});
  final void Function()? onTap;
  final bool isLoading;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        height: 65,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: isLoading
              ? CircularProgressIndicator(
            strokeWidth: 2,
            color: Colors.white,

            // backgroundColor: Colors.grey,
          )
              : Text(
            'Add',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
