import 'package:flutter/material.dart';

/// Hex Opacity Value
///
/// 100% — 0XFF
/// 99% — 0XFC
/// 98% — 0XFA
/// 97% — 0XF7
/// 96% — 0XF5
/// 95% — 0XF2
/// 94% — 0XF0
/// 93% — 0XED
/// 92% — 0XEB
/// 91% — 0XE8
/// 90% — 0XE6
/// 89% — 0XE3
/// 88% — 0XE0
/// 87% — 0XDE
/// 86% — 0XDB
/// 85% — 0XD9
/// 84% — 0XD6
/// 83% — 0XD4
/// 82% — 0XD1
/// 81% — 0XCF
/// 80% — 0XCC
/// 79% — 0XC9
/// 78% — 0XC7
/// 77% — 0XC4
/// 76% — 0XC2
/// 75% — 0XBF
/// 74% — 0XBD
/// 73% — 0XBA
/// 72% — 0XB8
/// 71% — 0XB5
/// 70% — 0XB3
/// 69% — 0XB0
/// 68% — 0XAD
/// 67% — 0XAB
/// 66% — 0XA8
/// 65% — 0XA6
/// 64% — 0XA3
/// 63% — 0XA1
/// 62% — 0X9E
/// 61% — 0X9C
/// 60% — 0X99
/// 59% — 0X96
/// 58% — 0X94
/// 57% — 0X91
/// 56% — 0X8F
/// 55% — 0X8C
/// 54% — 0X8A
/// 53% — 0X87
/// 52% — 0X85
/// 51% — 0X82
/// 50% — 0X80
/// 49% — 0X7D
/// 48% — 0X7A
/// 47% — 0X78
/// 46% — 0X75
/// 45% — 0X73
/// 44% — 0X70
/// 43% — 0X6E
/// 42% — 0X6B
/// 41% — 0X69
/// 40% — 0X66
/// 39% — 0X63
/// 38% — 0X61
/// 37% — 0X5E
/// 36% — 0X5C
/// 35% — 0X59
/// 34% — 0X57
/// 33% — 0X54
/// 32% — 0X52
/// 31% — 0X4F
/// 30% — 0X4D
/// 29% — 0X4A
/// 28% — 0X47
/// 27% — 0X45
/// 26% — 0X42
/// 25% — 0X40
/// 24% — 0X3D
/// 23% — 0X3B
/// 22% — 0X38
/// 21% — 0X36
/// 20% — 0X33
/// 19% — 0X30
/// 18% — 0X2E
/// 17% — 0X2B
/// 16% — 0X29
/// 15% — 0X26
/// 14% — 0X24
/// 13% — 0X21
/// 12% — 0X1F
/// 11% — 0X1C
/// 10% — 0X1A
/// 9% — 0X17
/// 8% — 0X14
/// 7% — 0X12
/// 6% — 0X0F
/// 5% — 0X0D
/// 4% — 0X0A
/// 3% — 0X08
/// 2% — 0X05
/// 1% — 0X03
/// 0% — 0X00
class ColorsCustom {
  static const PrimaryColor primaryColor = const PrimaryColor();
  static const SecondaryColor secondaryColor = const SecondaryColor();
  static const OthersColor othersColor = const OthersColor();

  // Color Theme
  static const Color colorBackground = Color(0xFFF5F5F5);
  static const Color backgroundColor = Color(0xffE5E5E5);

  // Color Widget
  static const Color colorBlur = Color(0X80DEE4F7);
  static const Color colorOrange = Color(0xffF58220);
  static const Color colorSilver = Color(0XFF495057);
  static const Color darkTurqoise = Color(0xff00767A);

  // Color Text
  static const Color textGrey = Color(0XFFACB5BD);
  static const Color textWhite = Colors.white;
  static const Color textcolorDarkGrey = Color(0xffACB5BD);
  static const Color textcolorDark = Color(0xff495057);

  // Shadow Color
  static const Color shadowColor_8 = Color(0x1418274B);
  static const Color shadowColor_10 = Color(0x1a18274B);
  static const Color shadowColor_12 = Color(0x1f18274B);
  static const Color shadowColor_14 = Color(0x2418274B);
}

class PrimaryColor {
  const PrimaryColor();
  Color get orange => const Color(0xffF58220);
  Color get darkTurqoise => const Color(0xff00767A);
  Color get turqoise => const Color(0xff79CDCF);
  Color get midOrange => const Color(0xffFBAD18);
  Color get yellow => const Color(0xffFFC40C);
}

class SecondaryColor {
  const SecondaryColor();
  Color get universal => const Color(0xff00422A);
  Color get spirited => const Color(0xffEF4952);
  Color get awake => const Color(0xffF47B32);
  Color get abudant => const Color(0xffD89228);
  Color get radiant => const Color(0xffF1C817);
  Color get thoughtful => const Color(0xff412313);
  Color get passionate => const Color(0xff8C2F2F);
  Color get intense => const Color(0xffC03D2A);
  Color get clement => const Color(0xffBF542D);
  Color get peaceful => const Color(0xffF2C084);
}

class OthersColor {
  const OthersColor();
  // Yellow
  Color get yellow50 => const Color(0xffB6833A);
  Color get yellow40 => const Color(0xffFF9700);
  Color get yellow30 => const Color(0xffFEBA57);
  Color get yellow20 => const Color(0xffFFEACC);
  Color get yellow10 => const Color(0xffFFF5E8);

  // Dark Grey
  Color get darkGrey50 => const Color(0xffF8F9FA);
  Color get darkGrey40 => const Color(0xffDDE2E5);
  Color get darkGrey30 => const Color(0xffACB5BD);
  Color get darkGrey20 => const Color(0xff495057);
  Color get darkGrey10 => const Color(0xff212429);

  // White Grey
  Color get whiteGrey50 => const Color(0xffE0E0E0);
  Color get whiteGrey40 => const Color(0xffE8E8E8);
  Color get whiteGrey30 => const Color(0xffF2F2F2);
  Color get whiteGrey20 => const Color(0xffFAFAFA);
  Color get whiteGrey10 => const Color(0xffFFFFFF);

  // Orange
  Color get orange50 => const Color(0xffBB4217);
  Color get orange40 => const Color(0xffFA622D);
  Color get orange30 => const Color(0xffFFB094);
  Color get orange20 => const Color(0xffFFE3DA);
  Color get orange10 => const Color(0xffFFF3EF);

  // Red
  Color get red50 => const Color(0xff9A1919);
  Color get red40 => const Color(0xffEF3030);
  Color get red30 => const Color(0xffFF6060);
  Color get red20 => const Color(0xffFFC3C3);
  Color get red10 => const Color(0xffFFEEEE);

  // Purple
  Color get purple50 => const Color(0xff5F64C0);
  Color get purple40 => const Color(0xff787EFF);
  Color get purple30 => const Color(0xff9BA0FF);
  Color get purple20 => const Color(0xffCED0FF);
  Color get purple10 => const Color(0xffF1F2FF);

  // Blue
  Color get blue50 => const Color(0xff2750AE);
  Color get blue40 => const Color(0xff1283DA);
  Color get blue30 => const Color(0xff2D7FF9);
  Color get blue20 => const Color(0xff9CC7FF);
  Color get blue10 => const Color(0xffCFDFFF);

  // Sky Blue
  Color get skyBlue50 => const Color(0xff0B76B7);
  Color get skyBlue40 => const Color(0xff01A9DB);
  Color get skyBlue30 => const Color(0xff18BFFF);
  Color get skyBlue20 => const Color(0xff77D1F3);
  Color get skyBlue10 => const Color(0xffD0F0FD);

  // Teal
  Color get teal50 => const Color(0xff06A09B);
  Color get teal40 => const Color(0xff02AAA4);
  Color get teal30 => const Color(0xff20D9D2);
  Color get teal20 => const Color(0xff72DDC3);
  Color get teal10 => const Color(0xffC2F5E9);

  // Green
  Color get green50 => const Color(0xff338A17);
  Color get green40 => const Color(0xff11AF22);
  Color get green30 => const Color(0xff20C933);
  Color get green20 => const Color(0xff93E088);
  Color get green10 => const Color(0xffD1F7C4);
}
