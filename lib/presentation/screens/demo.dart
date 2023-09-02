import 'package:flutter/material.dart';
import 'package:pass_key/data/repository.dart';
import 'package:pass_key/presentation/widgets/common_widgets/app_snackbar.dart';
import 'package:pass_key/presentation/widgets/common_widgets/app_button.dart';
import 'package:pass_key/presentation/widgets/common_widgets/app_textfield.dart';
import 'package:pass_key/services/functions/http_response_handler.dart';
import 'package:pass_key/utils/constants/colors.dart';
import 'package:pass_key/utils/constants/global_variables.dart';
import 'package:http/http.dart' as http;

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  final _appRepo = AppRepository();

  void apiDemo(BuildContext context) async {
    Map data = {'email': "imranchopdar13@gmail.com", 'passwrd': "test1234"};

    final http.Response response = await _appRepo.loginAPi(data);

    if (!mounted) return;
    httpResponseHandler(
      response: response,
      context: context,
      onSuccess: () {
        appSnackbar(context, response.body, GlobalVariables().info,
            AppColors.infoColor);
      },
    );
  }

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

                      apiDemo(context);
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
