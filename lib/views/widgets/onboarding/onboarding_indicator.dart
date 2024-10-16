import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/data/controller/start/onboarding_controller.dart';
import 'package:travel_app/utils/colors.dart';
import 'package:travel_app/utils/sizes.dart';

class OnboardingIndicator extends StatelessWidget {
  const OnboardingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final onboardingController = Get.put(OnboardingController());
    return SmoothPageIndicator(
      controller: onboardingController.pageController,
      count: 3,
      effect: const SlideEffect(
        dotHeight: AppSizes.xs,
        dotWidth: AppSizes.buttonWidth-15,
        activeDotColor: AppColor.white,
      ),
    );
  }
}
