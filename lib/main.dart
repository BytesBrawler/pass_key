import 'package:flutter/material.dart';
import 'package:pass_key/presentation/screens/demo.dart';
import 'package:pass_key/utils/constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Password manager',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
              color: AppColors.appBarTextColor,
              fontFamily: "Roboto",
              fontWeight: FontWeight.bold,
              fontSize: 26),
          color: AppColors.primaryColor,
          iconTheme: IconThemeData(color: AppColors.primaryColor),
        ),

        // iconTheme: IconThemeData(
        //   color: _iconColor,
        // ),
        // textTheme: _lightTextTheme,
        //   dividerTheme: DividerThemeData(
        //     color: Colors.black12
        //   )
        // primaryColor: AppColors.primaryColor,
        // scaffoldBackgroundColor: AppColors.backgroundColor,
        // secondaryHeaderColor: AppColors.secondaryColor,
        colorScheme: const ColorScheme(
            brightness: Brightness.dark,
            primary: AppColors.primaryColor,
            onPrimary: AppColors.blackColor,
            secondary: AppColors.secondaryColor,
            onSecondary: AppColors.blackColor,
            error: AppColors.errorColor,
            onError: AppColors.whiteColor,
            background: AppColors.backgroundColor,
            onBackground: AppColors.blackColor,
            surface: AppColors.blackColor,
            onSurface: AppColors.blackColor),
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,

        //       static final TextTheme _lightTextTheme = TextTheme(
        //   headline1: _lightScreenHeading1TextStyle,
        // );

        // static final TextTheme _darkTextTheme = TextTheme(
        //   headline1: _darkScreenHeading1TextStyle,
        // );

        // static final TextStyle _lightScreenHeading1TextStyle =
        // TextStyle(fontSize: 26.0,fontWeight:FontWeight.bold, color: _lightOnPrimaryColor,fontFamily: "Roboto");

        // static final TextStyle _darkScreenHeading1TextStyle =
        //     _lightScreenHeading1TextStyle.copyWith(color: _darkOnPrimaryColor);
      ),
      home: const Demo(),
    );
  }
}
