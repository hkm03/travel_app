import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/data/controller/start/onboarding_controller.dart';
import 'package:travel_app/routes/route_names.dart';
import 'package:travel_app/utils/assets.dart';
import 'package:travel_app/utils/colors.dart';
import 'package:travel_app/utils/sizes.dart';
import 'package:travel_app/views/widgets/onboarding/onboarding_indicator.dart';
import 'package:travel_app/views/widgets/onboarding/onboarding_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    final onboardingController = Get.put(OnboardingController());

    return Scaffold(
      backgroundColor: AppColor.dark,
      body: Stack(
        children: [
          PageView(
            controller: onboardingController.pageController,
            onPageChanged: (index) {
              setState(
                () {
                  _currentPage = index;
                },
              );
            },
            children: const [
              OnboardingPage(
                  image: AppAssets.onboardingImageOne,
                  headline: "Lets explore the world",
                  description:
                      "let's explore the world with us with just a few clicks"),
              OnboardingPage(
                  image: AppAssets.onboardingImageTwo,
                  headline: "Visit tourist attractions",
                  description:
                      "Find thousands of tourist destinations ready for you to visit"),
              OnboardingPage(
                  image: AppAssets.onboardingImageThree,
                  headline: "Get ready for next trip",
                  description:
                      "Find thousands of tourist destinations ready for you to visit"),
            ],
          ),
          Positioned(
            bottom: AppSizes.md,
            left: AppSizes.defaultSpace,
            right: AppSizes.defaultSpace,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const OnboardingIndicator(),
                const SizedBox(height: AppSizes.lg * 2),
                _currentPage != 2
                    ? ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(AppSizes.buttonWidth * 3,
                              AppSizes.appBarHeight - 10),
                          backgroundColor: AppColor.secondary,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(AppSizes.borderRadiusLg),
                          ),
                        ),
                        onPressed: () {
                          onboardingController.pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut);
                        },
                        child: Text(
                          "Next",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: AppColor.black),
                        ),
                      )
                    : ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(AppSizes.buttonWidth * 3,
                              AppSizes.appBarHeight - 10),
                          backgroundColor: AppColor.secondary,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(AppSizes.borderRadiusLg),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(Get.context!)
                              .pushReplacementNamed(RouteNames.loginScreen);
                        },
                        child: Text(
                          "Get Started",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: AppColor.black),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
