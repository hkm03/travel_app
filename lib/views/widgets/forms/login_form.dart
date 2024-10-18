import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:travel_app/data/controller/authentication/login_controller.dart';
import 'package:travel_app/routes/route_names.dart';
import 'package:travel_app/utils/colors.dart';
import 'package:travel_app/utils/sizes.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    final loginController = Get.put(LoginController());
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.md + 4,
        vertical: AppSizes.appBarHeight,
      ),
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
                borderSide: const BorderSide(color: AppColor.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
                borderSide: const BorderSide(color: AppColor.secondary),
              ),
              labelText: "Email",
              labelStyle: const TextStyle(
                  color: AppColor.darkGrey, fontSize: AppSizes.md - 2),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),
          Obx(
            () => TextFormField(
              obscureText: loginController.isPasswordVisible.value,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(AppSizes.inputFieldRadius),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(AppSizes.inputFieldRadius),
                  borderSide: const BorderSide(color: AppColor.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(AppSizes.inputFieldRadius),
                  borderSide: const BorderSide(color: AppColor.secondary),
                ),
                labelText: "Password",
                labelStyle: const TextStyle(
                    color: AppColor.darkGrey, fontSize: AppSizes.md - 2),
                suffixIcon: GestureDetector(
                  onTap: () => loginController.togglePasswordVisibility(),
                  child: Icon(
                    loginController.isPasswordVisible.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems - 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: loginController.checkBox.value,
                    onChanged: (value) {
                      setState(
                        () {
                          loginController.checkBox.value = value!;
                        },
                      );
                    },
                    side: const BorderSide(color: AppColor.darkGrey),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(AppSizes.borderRadiusSm),
                    ),
                  ),
                  Text(
                    "Remember me",
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          color: AppColor.darkGrey,
                          fontSize: AppSizes.fontSizeSm,
                        ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(Get.context!)
                      .pushReplacementNamed(RouteNames.forgotPasswordScreen);
                },
                child: Text(
                  "Forgot password",
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        color: AppColor.darkGrey,
                        fontSize: AppSizes.fontSizeSm,
                      ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: AppColor.secondary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Sign In",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
