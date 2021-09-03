import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get button;
  TextStyle get appBar;
  TextStyle get infoCard;
  TextStyle get infoCardRed;
  TextStyle get infoCardGreen;
  TextStyle get eventTileTitle;
  TextStyle get eventTileSubtitle;
  TextStyle get eventTileMoney;
  TextStyle get eventTilePeople;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get button => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppTheme.colors.button,
      );

  @override
  TextStyle get title => GoogleFonts.montserrat(
        fontSize: 40,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.title,
      );

  @override
  TextStyle get appBar => GoogleFonts.montserrat(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: AppTheme.colors.backgroundPrimary,
      );

  @override
  TextStyle get infoCard => GoogleFonts.inter(
        color: AppTheme.colors.button,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get infoCardGreen => GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.infoCardGreen,
      );

  @override
  TextStyle get infoCardRed => GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppTheme.colors.infoCardRed,
      );

  @override
  TextStyle get eventTileMoney => GoogleFonts.inter(
        fontSize: 14,
        color: AppTheme.colors.eventTileMoney,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get eventTilePeople => GoogleFonts.inter(
        fontSize: 12,
        color: AppTheme.colors.eventTilePeople,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get eventTileSubtitle => GoogleFonts.inter(
        fontSize: 12,
        color: AppTheme.colors.eventTileSubtitle,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get eventTileTitle => GoogleFonts.inter(
        fontSize: 16,
        color: AppTheme.colors.eventTileTitle,
        fontWeight: FontWeight.w600,
      );
}
