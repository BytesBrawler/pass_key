import 'package:flutter/material.dart';
import 'package:pass_key/utils/constants/colors.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String myLabel;
  final double heightPercent;
  final double widthPercent;
  final String hint;
  final bool toHide;
  final int line;
  final TextInputType textInputType;

  const AppTextField(
      {super.key,
      required this.controller,
      required this.myLabel,
      required this.toHide,
      required this.line,
      required this.textInputType,
      required this.heightPercent,
      required this.widthPercent,
      required this.hint});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * heightPercent,
      width: MediaQuery.of(context).size.width * widthPercent,
      child: TextFormField(
        keyboardType: textInputType,
        style: const TextStyle(color: AppColors.blackTextColor, fontSize: 20),
        controller: controller,
        obscureText: toHide,
        maxLines: line,
        textInputAction: TextInputAction.next,
        onEditingComplete: () => FocusScope.of(context).nextFocus(),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            color: AppColors.textColor.withOpacity(0.2),
          ),
          labelStyle: const TextStyle(color: AppColors.textColor),
          iconColor: AppColors.primaryColor,
          labelText: myLabel,

          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide:
                  const BorderSide(color: AppColors.primaryColor, width: 3)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide:
                  const BorderSide(color: AppColors.primaryColor, width: 3)),

          //    contentPadding: const EdgeInsets.symmetric(vertical: 1.0),
        ),
      ),
    );
  }
}
