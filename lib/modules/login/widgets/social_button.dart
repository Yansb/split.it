import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class SocialButtonWidget extends StatelessWidget {
  final String label;
  final String imagePath;
  final VoidCallback onTap;
  const SocialButtonWidget(
      {Key? key,
      required this.label,
      required this.imagePath,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            border: Border.fromBorderSide(
              BorderSide(color: AppTheme.colors.border),
            ),
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 57,
              height: 56,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  Image.asset(imagePath),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 1,
                    color: AppTheme.colors.border,
                  )
                ],
              ),
            ),
            Expanded(child: Container()),
            Text(
              label,
              style: AppTheme.textStyles.button,
            ),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
