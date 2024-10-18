import 'package:flutter/material.dart';
import 'package:travel_app/utils/assets.dart';
import 'package:travel_app/utils/colors.dart';
import 'package:travel_app/utils/sizes.dart';
import 'package:travel_app/views/widgets/forms/login_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: AppSizes.appBarHeight),
            Center(
              child: Image.asset(
                AppAssets.appLogo,
                width: AppSizes.iconLg * 5,
              ),
            ),
            const LoginForm(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppSizes.md + 4),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                AppSizes.borderRadiusLg),
                          ),
                          side: const BorderSide(color: AppColor.darkGrey)),
                      onPressed: () {},
                      child: Text(
                        "Create Account",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(12.0),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          onPressed: () {},
                          child: Image.asset(
                            AppAssets.instagramLogo,
                            height: AppSizes.iconSm + 4,
                            width: AppSizes.iconSm + 4,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(12),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          onPressed: () {},
                          child: Image.asset(
                            AppAssets.googleLogo,
                            height: AppSizes.iconSm + 4,
                            width: AppSizes.iconSm + 4,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(12),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          onPressed: () {},
                          child: Image.asset(
                            AppAssets.facebookLogo,
                            height: AppSizes.iconSm + 4,
                            width: AppSizes.iconSm + 4,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // const SizedBox(height: AppSizes.appBarHeight,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
