import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundSecondary,
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(gradient: AppTheme.grandients.background),
        child: Center(
          child: Image.asset(
            "assets/images/logo.png",
            width: 128,
            height: 112,
          ),
        ),
      ),
    );
  }
}
