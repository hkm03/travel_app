import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/data/controller/start/splash_controller.dart';
import 'package:travel_app/utils/assets.dart';
import 'package:travel_app/utils/sizes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              AppAssets.appLogo,
              width: AppSizes.iconLg * 5,
            ),
          ),
          Positioned(
            bottom: AppSizes.md,
            right: 0,
            left: 0,
            child: Text(
              "Version 1.1.0",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontSize: AppSizes.fontSizeSm),
            ),
          ),
        ],
      ),
    );
  }
}
