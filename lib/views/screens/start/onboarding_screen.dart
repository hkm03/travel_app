import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/data/controller/start/onboarding_controller.dart';
import 'package:travel_app/routes/route_names.dart';
import 'package:travel_app/utils/assets.dart';
import 'package:travel_app/utils/colors.dart';
import 'package:travel_app/utils/sizes.dart';
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
            bottom: AppSizes.defaultSpace,
            left: AppSizes.defaultSpace,
            right: AppSizes.defaultSpace,
            child: Column(
              children: [
                SmoothPageIndicator(
                  controller: onboardingController.pageController,
                  count: 3,
                  effect: const SlideEffect(
                      dotHeight: AppSizes.xs,
                      dotWidth: AppSizes.buttonWidth - 15,
                      activeDotColor: AppColor.white,
                      type: SlideType.slideUnder),
                ),
                const SizedBox(
                  height: AppSizes.appBarHeight * 2,
                ),
                _currentPage != 2
                    ? SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.secondary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  AppSizes.borderRadiusLg),
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
                        ),
                      )
                    : SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.secondary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  AppSizes.borderRadiusLg),
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
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
