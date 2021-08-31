import 'package:flutter/material.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/theme/app_colors.dart';
import 'package:split_it/theme/app_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserModel user =
        ModalRoute.of(context)!.settings.arguments as UserModel;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  child: SizedBox(
                    height: 56,
                    width: 56,
                    child: Image.network(
                      user.photoUrl!,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  user.name!,
                  style: AppTheme.textStyles.appBar,
                ),
              ],
            ),
            GestureDetector(
              child: Container(
                height: 56,
                width: 48,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: new Color.fromRGBO(255, 255, 255, 0.25)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.add),
              ),
            )
          ],
        ),
        toolbarHeight: 160,
        backgroundColor: AppTheme.colors.backgroundSecondary,
      ),
    );
  }
}
