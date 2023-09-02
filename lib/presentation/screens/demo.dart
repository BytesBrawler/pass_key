import 'package:flutter/material.dart';
import 'package:pass_key/presentation/widgets/app_snackbar.dart';
import 'package:pass_key/presentation/widgets/common_widgets/app_button.dart';
import 'package:pass_key/presentation/widgets/common_widgets/app_textfield.dart';
import 'package:pass_key/utils/constants/colors.dart';
import 'package:pass_key/utils/constants/global_variables.dart';

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final tfController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pass Key"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppTextField(
                controller: tfController,
                myLabel: "Name",
                toHide: false,
                line: 1,
                hint: "Imran",
                textInputType: TextInputType.name,
                heightPercent: 0.06,
                widthPercent: 0.8,
              ),
              const SizedBox(
                height: 30,
              ),
              AppTextField(
                controller: tfController,
                myLabel: "Name",
                toHide: false,
                line: 1,
                hint: "Name please",
                textInputType: TextInputType.name,
                heightPercent: 0.06,
                widthPercent: 0.8,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppButton(
                    text: "press",
                    width: 0.6,
                    action: () {
                      appSnackbar(
                        context,
                        "Welcome to Pass key",
                        GlobalVariables().info,
                        AppColors.infoColor,
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
