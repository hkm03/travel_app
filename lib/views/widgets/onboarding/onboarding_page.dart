import 'package:flutter/material.dart';
import 'package:travel_app/utils/assets.dart';
import 'package:travel_app/utils/colors.dart';
import 'package:travel_app/utils/devices.dart';
import 'package:travel_app/utils/sizes.dart';

class OnboardingPage extends StatelessWidget {
  final String image;
  final String headline;
  final String description;

  const OnboardingPage({
    super.key,
    required this.image,
    required this.headline,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: AppDeviceUtils.getScreenHeight(context),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: AppDeviceUtils.getScreenHeight(context),
          decoration: const BoxDecoration(
            color: Colors.black26,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace)
              .copyWith(bottom: AppSizes.lg * 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                AppAssets.onboardingLogo,
                width: AppSizes.iconMd * 3,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Text(
                headline,
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(color: AppColor.white, fontSize: AppSizes.lg * 2),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Text(
                description,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: AppColor.white),
              ),
              const SizedBox(height: AppSizes.appBarHeight * 2),
            ],
          ),
        ),
      ],
    );
  }
}
