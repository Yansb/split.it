import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_it/modules/login/login_controller.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/widgets/social_button.dart';
import 'package:split_it/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginController controller;

  @override
  void initState() {
    controller = LoginController(onUpdate: () {
      if (controller.state is LoginStateSuccess) {
        final user = (controller.state as LoginStateSuccess).user;
        Navigator.pushReplacementNamed(context, "/home", arguments: user);
      } else {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.colors.backgroundPrimary,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: [
                  Container(
                    width: 236,
                    child: Text(
                      "Divida suas contas com seus amigos",
                      style: AppTheme.textStyles.title,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Container(
                    width: 240,
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Text(
                        "🥳",
                        style: GoogleFonts.montserrat(fontSize: 40),
                      ),
                      title: Text(
                        "Faça seu login com uma das contas abaixo",
                        style: AppTheme.textStyles.button,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                if (controller.state is LoginStateLoading) ...[
                  Center(child: CircularProgressIndicator())
                ] else if (controller.state is LoginStateFailure) ...[
                  Text((controller.state as LoginStateFailure).toString())
                ] else
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: SocialButtonWidget(
                      label: "Entrar com o Google",
                      imagePath: "assets/images/google-icon.png",
                      onTap: () {
                        controller.googleSignIn();
                      },
                    ),
                  ),
                // TODO when i have a mac, intrage with apple login
                // SizedBox(
                //   height: 12,
                // ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 32),
                //   child: SocialButtonWidget(
                //     label: "Entrar com Apple",
                //     imagePath: "assets/images/apple.png",
                //     onTap: () {},
                //   ),
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
