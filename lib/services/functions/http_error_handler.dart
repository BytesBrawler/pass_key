import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pass_key/presentation/widgets/app_snackbar.dart';
import 'package:pass_key/utils/constants/colors.dart';
import 'package:pass_key/utils/constants/global_variables.dart';

void httpErrorHandler(
    {required http.Response response,
    required BuildContext context,
    required VoidCallback onSuccess}) {
  switch (response.statusCode) {
    case 200:
      onSuccess();
      break;

    case 400:
      appSnackbar(context, jsonDecode(response.body)['msg'],
          GlobalVariables().success, AppColors.successColor);
      break;
    case 500:
      appSnackbar(context, jsonDecode(response.body)['error'],
          GlobalVariables().error, AppColors.errorColor);
      break;
    default:
      appSnackbar(
          context, response.body, GlobalVariables().info, AppColors.infoColor);
  }
}
