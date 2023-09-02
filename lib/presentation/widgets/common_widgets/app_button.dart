import 'package:flutter/material.dart';
import 'package:pass_key/utils/constants/colors.dart';

class AppButton extends StatelessWidget {
  final String text;
  final double width;
  final VoidCallback action;

  const AppButton(
      {super.key,
      required this.text,
      required this.width,
      required this.action});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width * width,
      child: ElevatedButton(
        onPressed: action,
        style: ElevatedButton.styleFrom(
          elevation: 8,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          shadowColor: AppColors.borderColor,
          minimumSize: const Size(100, 30),
          backgroundColor: AppColors.primaryColor,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            color: AppColors.textColor,
          ),
        ),
      ),
    );
  }
}
