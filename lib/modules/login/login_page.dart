import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_it/theme/app_colors.dart';
import 'package:split_it/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
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
                                Image.asset(
                                  "assets/images/google-icon.png",
                                ),
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
                          Text("Entrar com Google",
                              style: AppTheme.textStyles.button),
                          Expanded(child: Container()),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
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
                                Image.asset(
                                  "assets/images/apple.png",
                                ),
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
                            "Entrar com Apple",
                            style: AppTheme.textStyles.button,
                          ),
                          Expanded(child: Container()),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
