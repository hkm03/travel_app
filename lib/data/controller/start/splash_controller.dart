import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/routes/route_names.dart';

class SplashController extends GetxController {
  static SplashController get instance => Get.find();

  @override
  void onInit() {
    super.onInit();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.of(Get.context!)
          .pushReplacementNamed(RouteNames.onBoardingScreen),
    );
  }
}
