import 'package:flutter/material.dart';
import 'package:pass_key/utils/constants/colors.dart';

void appSnackbar(
    BuildContext context, String text, IconData icon, Color color) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            icon,
            size: 30,
            color: color,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
      backgroundColor: AppColors.primaryColor,
      elevation: 30,
      duration: const Duration(seconds: 2),
      margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height - 200,
        left: MediaQuery.of(context).size.width < 600
            ? MediaQuery.of(context).size.width * 0.1
            : MediaQuery.of(context).size.width * 0.25,
        right: MediaQuery.of(context).size.width < 600
            ? MediaQuery.of(context).size.width * 0.1
            : MediaQuery.of(context).size.width * 0.25,
      ),
      behavior: SnackBarBehavior.floating,
    ),
  );
}
