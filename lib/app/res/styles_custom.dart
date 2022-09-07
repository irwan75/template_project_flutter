import 'package:flutter/material.dart';
import 'package:flutter_project_template/app/res/path_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors_custom.dart';

abstract class StyleCustom {
  static const cardBlurShadow = BoxShadow(
    blurRadius: 40,
    spreadRadius: 0,
    offset: Offset(0, 8),
    color: ColorsCustom.colorBlur,
  );

  static final TextStyle primaryTextStyle =
      GoogleFonts.raleway().copyWith(color: Colors.white);

  static final TextStyle fieldTextStyle = GoogleFonts.openSans().copyWith(
    color: ColorsCustom.textcolorDarkGrey,
    fontSize: SizedFont.textSmallx,
    fontWeight: SizedFontWeight.textLight,
  );
}

abstract class TextStyleHeading {
  const TextStyleHeading();

  static const textH1XXLarge = TextStyle(
    fontFamily: PathFonts.markOt,
    fontWeight: SizedFontWeight.textNormal,
    fontSize: SizedFont.textSize_46,
    height: SizedHeightSpacingText.sizedHeightSpacing_68,
  );

  static const textH2XLarge = TextStyle(
    fontFamily: PathFonts.markOt,
    fontWeight: SizedFontWeight.textNormal,
    fontSize: SizedFont.textSuperExtraLargexx,
    height: SizedHeightSpacingText.sizedHeightSpacing_40,
  );

  static const textH3Large = TextStyle(
    fontFamily: PathFonts.markOt,
    fontWeight: SizedFontWeight.textNormal,
    fontSize: SizedFont.textSuperSuperLargex,
    height: SizedHeightSpacingText.sizedHeightSpacing_29,
  );

  static const textH4Default = TextStyle(
    fontFamily: PathFonts.markOt,
    fontWeight: SizedFontWeight.textNormal,
    fontSize: SizedFont.textSuperLargexx,
    height: SizedHeightSpacingText.sizedHeightSpacing_32,
  );

  static const textH5Small = TextStyle(
    fontFamily: PathFonts.markOt,
    fontWeight: SizedFontWeight.textNormal,
    fontSize: SizedFont.textLargex,
    height: SizedHeightSpacingText.sizedHeightSpacing_24,
  );

  static const textH6XSmall = TextStyle(
    fontFamily: PathFonts.markOt,
    fontWeight: SizedFontWeight.textNormal,
    fontSize: SizedFont.textMediumxx,
    height: SizedHeightSpacingText.sizedHeightSpacing_22,
  );

  static const textH7XXSmall = TextStyle(
    fontFamily: PathFonts.markOt,
    fontWeight: SizedFontWeight.textNormal,
    fontSize: SizedFont.textMedium,
    height: SizedHeightSpacingText.sizedHeightSpacing_22,
  );

  static const textH8SuperSmall = TextStyle(
    fontFamily: PathFonts.markOt,
    fontWeight: SizedFontWeight.textNormal,
    fontSize: SizedFont.textSmallx,
    height: SizedHeightSpacingText.sizedHeightSpacing_14,
  );
}

abstract class TextStyleCaps {
  const TextStyleCaps();

  static final textCapsXSmall = GoogleFonts.poppins(
    fontSize: SizedFont.textSmallx,
    height: SizedHeightSpacingText.sizedHeightSpacing_16,
    letterSpacing: SizedLetterSpacing.letterSpacing_5,
  );

  static final textCapsSmall = GoogleFonts.poppins(
    fontSize: SizedFont.textMedium,
    height: SizedHeightSpacingText.sizedHeightSpacing_16,
    letterSpacing: SizedLetterSpacing.letterSpacing_5,
  );

  static final textCapsDefault = GoogleFonts.poppins(
    fontSize: SizedFont.textMediumxx,
    height: SizedHeightSpacingText.sizedHeightSpacing_20,
    letterSpacing: SizedLetterSpacing.letterSpacing_5,
  );
}

abstract class TextStyleCustom {
  const TextStyleCustom();

  static final textXSmall = GoogleFonts.openSans(
    fontSize: SizedFont.textSuperSmallxx,
    height: SizedHeightSpacingText.sizedHeightSpacing_14,
  );

  static final textSmall = GoogleFonts.openSans(
    fontSize: SizedFont.textSmallx,
    height: SizedHeightSpacingText.sizedHeightSpacing_14,
  );

  static final textDefault = GoogleFonts.openSans(
    fontSize: SizedFont.textMedium,
    height: SizedHeightSpacingText.sizedHeightSpacing_16,
  );

  static final textLarge = GoogleFonts.openSans(
    fontSize: SizedFont.textMediumxx,
    height: SizedHeightSpacingText.sizedHeightSpacing_20,
  );

  static final textXLarge = GoogleFonts.openSans(
    fontSize: SizedFont.textLargex,
    height: SizedHeightSpacingText.sizedHeightSpacing_24,
  );
}

abstract class TextStyleParagraph {
  const TextStyleParagraph();

  static final textParagraphXSmall = GoogleFonts.openSans(
    fontSize: SizedFont.textSuperSmallxx,
    height: SizedHeightSpacingText.sizedHeightSpacing_16,
  );

  static final textParagraphSmall = GoogleFonts.openSans(
    fontSize: SizedFont.textSmallx,
    height: SizedHeightSpacingText.sizedHeightSpacing_16,
  );

  static final textParagraphDefault = GoogleFonts.openSans(
    fontSize: SizedFont.textMedium,
    height: SizedHeightSpacingText.sizedHeightSpacing_24,
  );

  static final textParagraphLarge = GoogleFonts.openSans(
    fontSize: SizedFont.textMediumxx,
    height: SizedHeightSpacingText.sizedHeightSpacing_24,
  );

  static final textParagraphXLarge = GoogleFonts.openSans(
      fontSize: SizedFont.textLargex,
      height: SizedHeightSpacingText.sizedHeightSpacing_28);
}

abstract class ShadowStyle {
  const ShadowStyle();

  static final List<BoxShadow> shadow4XLarge = [
    const BoxShadow(
      blurRadius: SizedBlurSpreadRadius.blur28,
      spreadRadius: SizedBlurSpreadRadius.spreadMines6,
      offset: Offset(0, 6),
      color: ColorsCustom.shadowColor_12,
    ),
    const BoxShadow(
      blurRadius: SizedBlurSpreadRadius.blur88,
      spreadRadius: SizedBlurSpreadRadius.spreadMines4,
      offset: Offset(0, 18),
      color: ColorsCustom.shadowColor_14,
    ),
  ];

  static final List<BoxShadow> shadow3XLarge = [
    const BoxShadow(
      blurRadius: SizedBlurSpreadRadius.blur22,
      spreadRadius: SizedBlurSpreadRadius.spreadMines6,
      offset: Offset(0, 8),
      color: ColorsCustom.shadowColor_12,
    ),
    const BoxShadow(
      blurRadius: SizedBlurSpreadRadius.blur64,
      spreadRadius: SizedBlurSpreadRadius.spreadMines4,
      offset: Offset(0, 14),
      color: ColorsCustom.shadowColor_12,
    ),
  ];

  static final List<BoxShadow> shadow2XLarge = [
    const BoxShadow(
      blurRadius: SizedBlurSpreadRadius.blur18,
      spreadRadius: SizedBlurSpreadRadius.spreadMines6,
      offset: Offset(0, 8),
      color: ColorsCustom.shadowColor_12,
    ),
    BoxShadow(
      blurRadius: SizedBlurSpreadRadius.blur42,
      spreadRadius: SizedBlurSpreadRadius.spreadMines4,
      offset: Offset(0, 12),
      color: ColorsCustom.shadowColor_12,
    ),
  ];

  static final List<BoxShadow> shadowXLarge = [
    BoxShadow(
      blurRadius: SizedBlurSpreadRadius.blur14,
      spreadRadius: SizedBlurSpreadRadius.spreadMines6,
      offset: Offset(0, 6),
      color: ColorsCustom.shadowColor_12,
    ),
    BoxShadow(
      blurRadius: SizedBlurSpreadRadius.blur32,
      spreadRadius: SizedBlurSpreadRadius.spreadMines4,
      offset: Offset(0, 10),
      color: ColorsCustom.shadowColor_10,
    ),
  ];

  static final List<BoxShadow> shadowLarge = [
    const BoxShadow(
      blurRadius: SizedBlurSpreadRadius.blur12,
      spreadRadius: SizedBlurSpreadRadius.spreadMines6,
      offset: Offset(0, 6),
      color: ColorsCustom.shadowColor_12,
    ),
    const BoxShadow(
      blurRadius: SizedBlurSpreadRadius.blur24,
      spreadRadius: SizedBlurSpreadRadius.spreadMines4,
      offset: Offset(0, 8),
      color: ColorsCustom.shadowColor_8,
    ),
  ];

  static final List<BoxShadow> shadowMedium = [
    BoxShadow(
      blurRadius: SizedBlurSpreadRadius.blur6,
      spreadRadius: SizedBlurSpreadRadius.spreadMines4,
      offset: Offset(0, 4),
      color: ColorsCustom.shadowColor_12,
    ),
    BoxShadow(
      blurRadius: SizedBlurSpreadRadius.blur8,
      spreadRadius: SizedBlurSpreadRadius.spreadMines4,
      offset: Offset(0, 8),
      color: ColorsCustom.shadowColor_8,
    ),
  ];

  static final List<BoxShadow> shadowBase10 = [
    BoxShadow(
      blurRadius: SizedBlurSpreadRadius.blur4,
      spreadRadius: SizedBlurSpreadRadius.spreadMines2,
      offset: Offset(0, 2),
      color: ColorsCustom.shadowColor_12,
    ),
    BoxShadow(
      blurRadius: SizedBlurSpreadRadius.blur4,
      spreadRadius: SizedBlurSpreadRadius.spreadMines2,
      offset: Offset(0, 4),
      color: ColorsCustom.shadowColor_8,
    ),
  ];
}
