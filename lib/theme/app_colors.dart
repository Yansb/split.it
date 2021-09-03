import 'package:flutter/material.dart';

abstract class AppColors {
  Color get backgroundSecondary;
  Color get backgroundPrimary;
  Color get title;
  Color get button;
  Color get border;
  Color get border2;
  Color get icon;
  Color get iconBackground1;
  Color get iconBackground2;
  Color get infoCardRed;
  Color get infoCardGreen;
  Color get eventTileTitle;
  Color get eventTileSubtitle;
  Color get eventTileMoney;
  Color get eventTilePeople;
  Color get divider;
}

class AppColorsDefault implements AppColors {
  @override
  Color get backgroundPrimary => Color(0XFFFFFFFF);

  @override
  Color get icon => Color(0XFFF5F5F5);

  @override
  Color get backgroundSecondary => Color(0xFF40B38C);

  @override
  Color get title => Color(0XFF40B28C);

  @override
  Color get button => Color(0XFF666666);

  @override
  Color get border => Color(0XFFDCE0E5);
  @override
  Color get border2 => Color(0XFFFFFFFF);

  @override
  Color get iconBackground1 => Color(0XFFE9F8F2);

  @override
  Color get iconBackground2 => Color(0XFFFDECEF);

  @override
  Color get infoCardGreen => Color(0XFF40B28C);

  @override
  Color get infoCardRed => Color(0XFFE83F5B);

  @override
  Color get eventTileMoney => Color(0XFF666666);

  @override
  Color get eventTilePeople => Color(0XFFA4B2AE);

  @override
  Color get eventTileSubtitle => Color(0XFF666666);

  @override
  Color get eventTileTitle => Color(0XFF455250);

  @override
  Color get divider => Color(0XFF666666);
}
