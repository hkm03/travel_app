import 'package:flutter/material.dart';
import 'package:travel_app/utils/colors.dart';
import 'package:travel_app/utils/sizes.dart';


class AppbarTheme {
  AppbarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0.3,
    centerTitle: false,
    scrolledUnderElevation: 0.3,
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: AppColor.black, size: AppSizes.iconMd),
    actionsIconTheme:
        IconThemeData(color: AppColor.black, size: AppSizes.iconMd),
    titleTextStyle: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: AppColor.black),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0.3,
    centerTitle: false,
    scrolledUnderElevation: 0.3,
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: AppColor.black, size: AppSizes.iconMd),
    actionsIconTheme:
        IconThemeData(color: AppColor.white, size: AppSizes.iconMd),
    titleTextStyle: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: AppColor.white),
  );
}
