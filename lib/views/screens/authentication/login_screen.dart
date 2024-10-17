import 'package:flutter/material.dart';
import 'package:travel_app/utils/assets.dart';
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
            const SizedBox(height: AppSizes.appBarHeight * 2),
            Center(
              child: Image.asset(
                AppAssets.appLogo,
                width: AppSizes.iconLg * 5,
              ),
            ),
            
            const LoginForm(),

            
          ],
        ),
      ),
    );
  }
}
