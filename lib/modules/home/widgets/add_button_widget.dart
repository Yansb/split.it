import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class AddButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  const AddButtonWidget({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        width: 48,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: AppTheme.colors.border2.withOpacity(0.25)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Icon(
          Icons.add,
          color: AppTheme.colors.icon,
        )),
      ),
    );
  }
}
