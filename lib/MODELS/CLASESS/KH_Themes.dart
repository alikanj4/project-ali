// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled12/MODELS/CLASESS/KH_Helper.dart';
import 'package:untitled12/MODELS/CLASESS/KH_Languages.dart';
import 'package:untitled12/MODELS/CLASESS/KH_Responsivness.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//


const K_LIGHT_THEME_MAIN_COLOR = Color(0xFF6D94C4);
const K_LIGHT_THEME_ACCENT_COLOR = Color(0xFF6D94C4);
const K_LIGHT_THEME_NAV_BAR_COLOR = Color(0xFFffffff);
const K_LIGHT_THEME_TAB_BAR_COLOR = Color(0xFFffffff);
const K_LIGHT_THEME_TITELS_COLOR = Color(0xFF000000);
const K_LIGHT_THEME_SUB_TITELS_COLOR = Color(0xFF8E8E94);
const K_LIGHT_THEME_CARD_SHADOW_COLOR = Color.fromRGBO(142, 142, 148, 0.2);
const K_LIGHT_THEME_TEXTS_COLOR = Color(0xFF6D94C4);
const K_LIGHT_THEME_GREEN_COLOR = Color(0xFF00A99E);
const K_LIGHT_THEME_RED_COLOR = Color(0xFFDF255D);
const K_LIGHT_THEME_BUTTONS_TEXT_COLOR = Color(0xFFffffff);
const K_LIGHT_THEME_APPBAR_TEXT_COLOR = Color(0xFF6D94C4);
const K_LIGHT_THEME_TEXT_FIELDS_COLOR = Color(0xFF6D94C4);
const K_LIGHT_THEME_BG_COLOR = Color(0xFFffffff);
const K_LIGHT_THEME_BG2_COLOR = Color(0xFFF0F5FF); // 0xFFF0F5FF // E8EFFF
const K_LIGHT_THEME_CELLS_COLOR = Color(0xFFffffff);
const K_LIGHT_THEME_CARDS_COLOR = Color(0xFFffffff);
const K_LIGHT_THEME_CARDS_COLOR2 = Color(0xFFffffff);
const K_LIGHT_THEME_FILLS_COLOR = Color(0xFFECECED);
// Color.fromRGBO(120, 120, 128, 0.2);

//=======================================//

const K_DARK_THEME_MAIN_COLOR = Color(0xFF6D94C4);
const K_DARK_THEME_ACCENT_COLOR = Color(0xFF6D94C4);
const K_DARK_THEME_NAV_BAR_COLOR = Color(0xFF15202B);
const K_DARK_THEME_TAB_BAR_COLOR = Color(0xFF15202B);
const K_DARK_THEME_TITELS_COLOR = Color(0xFFffffff);
const K_DARK_THEME_SUB_TITELS_COLOR = Color(0xFF8899A6);
const K_DARK_THEME_CARD_SHADOW_COLOR = Color.fromRGBO(136, 153, 166, 0.01);
const K_DARK_THEME_TEXTS_COLOR = Color(0xFF6D94C4);
const K_DARK_THEME_GREEN_COLOR = Color(0xFF00A99E);
const K_DARK_THEME_RED_COLOR = Color(0xFFDF255D);
const K_DARK_THEME_BUTTONS_TEXT_COLOR = Color(0xFFffffff);
const K_DARK_THEME_APPBAR_TEXT_COLOR = Color(0xFF6D94C4);
const K_DARK_THEME_TEXT_FIELDS_COLOR = Color(0xFF6D94C4);
const K_DARK_THEME_BG_COLOR = Color(0xFF10171D); // Color(0xFF10171D);
const K_DARK_THEME_BG2_COLOR = Color(0xFF10171D); // Color(0xFF10171D);
const K_DARK_THEME_CELLS_COLOR = Color(0xFF15202B);
// const K_DARK_THEME_CARDS_COLOR = Color(0xFF15202B);
const K_DARK_THEME_CARDS_COLOR = Color(0xFF141F2B);
const K_DARK_THEME_CARDS_COLOR2 = Color.fromRGBO(136, 153, 166, 0.3);
const K_DARK_THEME_FILLS_COLOR = Color(0xFF2B2B2F);
// Color.fromRGBO(120, 120, 128, 0.36);





//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//


//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

// final _KH_Colors = _theme.extension<KH_Colors>()!;

@immutable
class KH_Colors extends ThemeExtension<KH_Colors> {
  final Color PrimeryColor;
  final Color NavBarColor;
  final Color NavBarTextColor;
  final Color TabBarColor;
  final Color TitelsColor;
  final Color SubTitelsColor;
  final Color TextsColor;
  final Color ButtonsTextsColor;
  final Color TextFieldsColor;
  final Color BGColor;
  final Color BG2Color;
  final Color CardColor;
  final Color Card2Color;
  final Color CellsColor;
  final Color FillsColor;
  final Color GreenColor;
  final Color RedColor;
  final Color CardShadowColor;

  const KH_Colors({
    required this.PrimeryColor,
    required this.NavBarColor,
    required this.NavBarTextColor,
    required this.TabBarColor,
    required this.TitelsColor,
    required this.SubTitelsColor,
    required this.TextsColor,
    required this.ButtonsTextsColor,
    required this.TextFieldsColor,
    required this.BGColor,
    required this.BG2Color,
    required this.CardColor,
    required this.Card2Color,
    required this.CellsColor,
    required this.FillsColor,
    required this.GreenColor,
    required this.RedColor,
    required this.CardShadowColor,
  });

//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// COPY WITH
//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//

  @override
  KH_Colors copyWith({
    Color? PrimeryColor,
    Color? NavBarColor,
    Color? NavBarTextColor,
    Color? TabBarColor,
    Color? TitelsColor,
    Color? SubTitelsColor,
    Color? TextsColor,
    Color? ButtonsTextsColor,
    Color? TextFieldsColor,
    Color? BGColor,
    Color? BG2Color,
    Color? CardColor,
    Color? Card2Color,
    Color? CellsColor,
    Color? FillsColor,
    Color? GreenColor,
    Color? RedColor,
    Color? CardShadowColor,
  }) {
    return KH_Colors(
      PrimeryColor: PrimeryColor ?? this.PrimeryColor,
      NavBarColor: NavBarColor ?? this.NavBarColor,
      NavBarTextColor: NavBarTextColor ?? this.NavBarTextColor,
      TabBarColor: TabBarColor ?? this.TabBarColor,
      TitelsColor: TitelsColor ?? this.TitelsColor,
      SubTitelsColor: SubTitelsColor ?? this.SubTitelsColor,
      TextsColor: TextsColor ?? this.TextsColor,
      ButtonsTextsColor: ButtonsTextsColor ?? this.ButtonsTextsColor,
      TextFieldsColor: TextFieldsColor ?? this.TextFieldsColor,
      BGColor: BGColor ?? this.BGColor,
      BG2Color: BG2Color ?? this.BG2Color,
      CardColor: CardColor ?? this.CardColor,
      Card2Color: Card2Color ?? this.Card2Color,
      CellsColor: CellsColor ?? this.CellsColor,
      FillsColor: FillsColor ?? this.FillsColor,
      GreenColor: GreenColor ?? this.GreenColor,
      RedColor: RedColor ?? this.RedColor,
      CardShadowColor: CardShadowColor ?? this.CardShadowColor,
    );
  }

//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// LERP
//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//

  @override
  KH_Colors lerp(ThemeExtension<KH_Colors>? other, double t) {
    if (other is! KH_Colors) {
      return this;
    }
    return KH_Colors(
      PrimeryColor:
          Color.lerp(PrimeryColor, other.PrimeryColor, t) ?? PrimeryColor,
      NavBarColor: Color.lerp(NavBarColor, other.NavBarColor, t) ?? NavBarColor,
      NavBarTextColor: Color.lerp(NavBarTextColor, other.NavBarTextColor, t) ??
          NavBarTextColor,
      TabBarColor: Color.lerp(TabBarColor, other.TabBarColor, t) ?? TabBarColor,
      TitelsColor: Color.lerp(TitelsColor, other.TitelsColor, t) ?? TitelsColor,
      SubTitelsColor:
          Color.lerp(SubTitelsColor, other.SubTitelsColor, t) ?? SubTitelsColor,
      TextsColor: Color.lerp(TextsColor, other.TextsColor, t) ?? TextsColor,
      ButtonsTextsColor:
          Color.lerp(ButtonsTextsColor, other.ButtonsTextsColor, t) ??
              ButtonsTextsColor,
      TextFieldsColor: Color.lerp(TextFieldsColor, other.TextFieldsColor, t) ??
          TextFieldsColor,
      BGColor: Color.lerp(BGColor, other.BGColor, t) ?? BGColor,
      BG2Color: Color.lerp(BG2Color, other.BG2Color, t) ?? BG2Color,
      CardColor: Color.lerp(CardColor, other.CardColor, t) ?? CardColor,
      Card2Color: Color.lerp(Card2Color, other.Card2Color, t) ?? Card2Color,
      CellsColor: Color.lerp(CellsColor, other.CellsColor, t) ?? CellsColor,
      FillsColor: Color.lerp(FillsColor, other.FillsColor, t) ?? FillsColor,
      GreenColor: Color.lerp(GreenColor, other.GreenColor, t) ?? GreenColor,
      RedColor: Color.lerp(RedColor, other.RedColor, t) ?? RedColor,
      CardShadowColor: Color.lerp(CardShadowColor, other.CardShadowColor, t) ??
          CardShadowColor,
    );
  }

//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// LIGHT
//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
// the light theme
  static const light = KH_Colors(
    PrimeryColor: K_LIGHT_THEME_MAIN_COLOR,
    NavBarColor: K_LIGHT_THEME_NAV_BAR_COLOR,
    NavBarTextColor: K_LIGHT_THEME_APPBAR_TEXT_COLOR,
    TabBarColor: K_LIGHT_THEME_TAB_BAR_COLOR,
    TitelsColor: K_LIGHT_THEME_TITELS_COLOR,
    SubTitelsColor: K_LIGHT_THEME_SUB_TITELS_COLOR,
    TextsColor: K_LIGHT_THEME_TEXTS_COLOR,
    ButtonsTextsColor: K_LIGHT_THEME_BUTTONS_TEXT_COLOR,
    TextFieldsColor: K_LIGHT_THEME_TEXT_FIELDS_COLOR,
    BGColor: K_LIGHT_THEME_BG_COLOR,
    BG2Color: K_LIGHT_THEME_BG2_COLOR,
    CardColor: K_LIGHT_THEME_CARDS_COLOR,
    Card2Color: K_LIGHT_THEME_CARDS_COLOR2,
    CellsColor: K_LIGHT_THEME_CELLS_COLOR,
    FillsColor: K_LIGHT_THEME_FILLS_COLOR,
    GreenColor: K_LIGHT_THEME_GREEN_COLOR,
    RedColor: K_LIGHT_THEME_RED_COLOR,
    CardShadowColor: K_LIGHT_THEME_CARD_SHADOW_COLOR,
  );

//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// DARK
//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
// the dark theme
  static const dark = KH_Colors(
    PrimeryColor: K_DARK_THEME_MAIN_COLOR,
    NavBarColor: K_DARK_THEME_NAV_BAR_COLOR,
    NavBarTextColor: K_DARK_THEME_APPBAR_TEXT_COLOR,
    TabBarColor: K_DARK_THEME_TAB_BAR_COLOR,
    TitelsColor: K_DARK_THEME_TITELS_COLOR,
    SubTitelsColor: K_DARK_THEME_SUB_TITELS_COLOR,
    TextsColor: K_DARK_THEME_TEXTS_COLOR,
    ButtonsTextsColor: K_DARK_THEME_BUTTONS_TEXT_COLOR,
    TextFieldsColor: K_DARK_THEME_TEXT_FIELDS_COLOR,
    BGColor: K_DARK_THEME_BG_COLOR,
    BG2Color: K_DARK_THEME_BG2_COLOR,
    CardColor: K_DARK_THEME_CARDS_COLOR,
    Card2Color: K_DARK_THEME_CARDS_COLOR2,
    CellsColor: K_DARK_THEME_CELLS_COLOR,
    FillsColor: K_DARK_THEME_FILLS_COLOR,
    GreenColor: K_DARK_THEME_GREEN_COLOR,
    RedColor: K_DARK_THEME_RED_COLOR,
    CardShadowColor: K_DARK_THEME_CARD_SHADOW_COLOR,
  );
//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

const K_SELLECTED_THEME_KEY = "K_SELLECTED_THEME_KEY";

enum ThemeTypeEnum {
  SystemTheme,
  LightTheme,
  DarkTheme,
}

extension ThemeTypeEnumString on ThemeTypeEnum {
  String get rawValue => describeEnum(this);
}

//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//

const K_FONT_FAMILY_DUBAI = "Dubai";
// const K_FONT_FAMILY_SF_PRO = "SF Pro Text";
const K_FONT_FAMILY_SF_ARABIC = "SF Arabic";
const K_FONT_FAMILY_SF_ALMARAI = "almarai";

enum FontTypeEnum {
  CiroFont,
  DubaiFont,
  SF_Pro_Font,
  SystemFont,
  NotoSans,
  AlmaraiFont,
}

extension FontTypeEnumString on FontTypeEnum {
  String get rawValue => describeEnum(this);
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class ThemeObject {
  FontTypeEnum? fontType;
  //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// primery
  Color? lightThemePrimeryColor;
  Color? darkThemePrimeryColor;
  //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// nav bar
  Color? lightThemeNavBarColor;
  Color? darkThemeNavBarColor;
  //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// nav bar text
  Color? lightThemeNavBarTextColor;
  Color? darkThemeNavBarTextColor;
  //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// tab bar
  Color? lightThemeTabBarColor;
  Color? darkThemeTabBarColor;
  //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// titels
  Color? lightThemeTitelsColor;
  Color? darkThemeTitelsColor;
  //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// sub titles
  Color? lightThemeSubTitelsColor;
  Color? darkThemeSubTitelsColor;
  //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// texts
  Color? lightThemeTextsColor;
  Color? darkThemeTextsColor;
  //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// buttons texts
  Color? lightThemeButtonsTextsColor;
  Color? darkThemeButtonsTextsColor;
  //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// text fields
  Color? lightThemeTextFieldsColor;
  Color? darkThemeTextFieldsColor;
  //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// bg color
  Color? lightThemeBGColor;
  Color? darkThemeBGColor;
  //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// bg color 2
  Color? lightThemeBG2Color;
  Color? darkThemeBG2Color;
  //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
  ThemeObject({
    // this.fontType = FontTypeEnum.SF_Pro_Font,
    required this.fontType,
    //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// primery
    this.lightThemePrimeryColor = K_LIGHT_THEME_MAIN_COLOR,
    this.darkThemePrimeryColor = K_DARK_THEME_MAIN_COLOR,
    //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// nav bar
    this.lightThemeNavBarColor = K_LIGHT_THEME_NAV_BAR_COLOR,
    this.darkThemeNavBarColor = K_DARK_THEME_NAV_BAR_COLOR,
    //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// app bar text
    this.lightThemeNavBarTextColor = K_LIGHT_THEME_APPBAR_TEXT_COLOR,
    this.darkThemeNavBarTextColor = K_DARK_THEME_APPBAR_TEXT_COLOR,
    //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// tab bar
    this.lightThemeTabBarColor = K_LIGHT_THEME_TAB_BAR_COLOR,
    this.darkThemeTabBarColor = K_DARK_THEME_TAB_BAR_COLOR,
    //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// titles
    this.lightThemeTitelsColor = K_LIGHT_THEME_TITELS_COLOR,
    this.darkThemeTitelsColor = K_DARK_THEME_TITELS_COLOR,
    //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// sub titles
    this.lightThemeSubTitelsColor = K_LIGHT_THEME_SUB_TITELS_COLOR,
    this.darkThemeSubTitelsColor = K_DARK_THEME_SUB_TITELS_COLOR,
    //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// texts
    this.lightThemeTextsColor = K_LIGHT_THEME_TEXTS_COLOR,
    this.darkThemeTextsColor = K_DARK_THEME_TEXTS_COLOR,
    //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// buttons texts
    this.lightThemeButtonsTextsColor = K_LIGHT_THEME_BUTTONS_TEXT_COLOR,
    this.darkThemeButtonsTextsColor = K_DARK_THEME_BUTTONS_TEXT_COLOR,
    //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// text fields
    this.lightThemeTextFieldsColor = K_LIGHT_THEME_TEXT_FIELDS_COLOR,
    this.darkThemeTextFieldsColor = K_DARK_THEME_TEXT_FIELDS_COLOR,
    //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// bg
    this.lightThemeBGColor = K_LIGHT_THEME_BG_COLOR,
    this.darkThemeBGColor = K_DARK_THEME_BG_COLOR,
    //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// bg 2
    this.lightThemeBG2Color = K_LIGHT_THEME_BG2_COLOR,
    this.darkThemeBG2Color = K_DARK_THEME_BG2_COLOR,
    //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
  });
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class ThemesProvider extends ChangeNotifier {
  //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
  //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//

  // ThemeObject _themeObject = ThemeObject();
  ThemeObject _themeObject = ThemeObject(
    fontType: (KH_Responsivenes.isIOS() == true)
        ? FontTypeEnum.SF_Pro_Font
        : FontTypeEnum.NotoSans,
  );

  ThemeObject get getThemeObject {
    return _themeObject;
  }

  void saveNewThemeObject({required ThemeObject themeObject}) {
    _themeObject = themeObject;
    notifyListeners();
    KH_Helper.safePrint("              ");
    KH_Helper.safePrint("==============");
    KH_Helper.safePrint("saved themeObject to provider");
    KH_Helper.safePrint("==============");
    KH_Helper.safePrint("              ");
    KH_Helper.safePrint(_themeObject.fontType?.rawValue);
  }

  //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
  //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//

  ThemeMode _sellectedTheme = ThemeMode.system;
  ThemeMode get getSellectedTheme => _sellectedTheme;

  //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
  //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
  // Automaticly called when creating provider instance making sure that we check shared preference for value

  ThemesProvider() {
    init();
  }
  init() async {
    //@@@@@@@@@@@@@@@@//
    //@@@@@@@@@@@@@@@@//
    final isEnglish = await KH_Languages.isEnglishLanguage();
    if (isEnglish) {
      _themeObject = ThemeObject(
        fontType: (KH_Responsivenes.isIOS() == true)
            ? FontTypeEnum.SF_Pro_Font
            : FontTypeEnum.NotoSans,
      );
    } else {
      _themeObject = ThemeObject(
        fontType: (KH_Responsivenes.isIOS() == true)
            ? FontTypeEnum.SF_Pro_Font
            : FontTypeEnum.SF_Pro_Font,
      );
    }
    //@@@@@@@@@@@@@@@@//
    //@@@@@@@@@@@@@@@@//
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? themeType = sharedPreferences.getString(K_SELLECTED_THEME_KEY);
    if (themeType == null) {
      KH_Helper.safePrint(
          "No theme is saved to shared preference , will turn system mode now");
      _sellectedTheme = ThemeMode.system;
    } else if (themeType == ThemeTypeEnum.SystemTheme.rawValue) {
      KH_Helper.safePrint(
          "System theme is saved to shared preference , will turn system mode now");
      _sellectedTheme = ThemeMode.system;
    } else if (themeType == ThemeTypeEnum.LightTheme.rawValue) {
      KH_Helper.safePrint(
          "Light theme is saved to shared preference , will turn Light mode now");
      _sellectedTheme = ThemeMode.light;
    } else if (themeType == ThemeTypeEnum.DarkTheme.rawValue) {
      KH_Helper.safePrint(
          "Dark theme is saved to shared preference , will turn Dark mode now");
      _sellectedTheme = ThemeMode.dark;
    } else {
      _sellectedTheme = ThemeMode.system;
    }
    notifyListeners();
  }

  //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
  //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
  // use when set new theme

  Future<void> setSellectedTheme({required ThemeTypeEnum newTheme}) async {
    //@@@@@//
    // if (newTheme == null) {
    //   _sellectedTheme = ThemeMode.system;
    // } else
    if (newTheme == ThemeTypeEnum.SystemTheme) {
      _sellectedTheme = ThemeMode.system;
    } else if (newTheme == ThemeTypeEnum.LightTheme) {
      _sellectedTheme = ThemeMode.light;
    } else if (newTheme == ThemeTypeEnum.DarkTheme) {
      _sellectedTheme = ThemeMode.dark;
    } else {
      _sellectedTheme = ThemeMode.system;
    }
    notifyListeners();
    //@@@@@//
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(
      K_SELLECTED_THEME_KEY,
      // newTheme.toString(),
      newTheme.rawValue,
    );
    KH_Helper.safePrint("#########################");
    KH_Helper.safePrint("#########################");
    KH_Helper.safePrint("SAVED NEW THEME DATA TO SHARED PREFERENCE");
    KH_Helper.safePrint("new theme is : ${newTheme.rawValue}");
    KH_Helper.safePrint("#########################");
    KH_Helper.safePrint("#########################");
    //@@@@@//
  }

  //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
  //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//

  Future<void> reSetFonts() async {
    //@@@@@@@@@@@@@@@@//
    //@@@@@@@@@@@@@@@@//
    final isEnglish = await KH_Languages.isEnglishLanguage();
    if (isEnglish) {
      _themeObject = ThemeObject(
        fontType: (KH_Responsivenes.isIOS() == true)
            ? FontTypeEnum.SF_Pro_Font
            : FontTypeEnum.NotoSans,
      );
    } else {
      _themeObject = ThemeObject(
        fontType: (KH_Responsivenes.isIOS() == true)
            ? FontTypeEnum.SF_Pro_Font
            : FontTypeEnum.SF_Pro_Font,
      );
    }
    //@@@@@@@@@@@@@@@@//
    //@@@@@@@@@@@@@@@@//
    KH_Helper.safePrint("#########################");
    KH_Helper.safePrint("#########################");
    KH_Helper.safePrint("FONTS ARE RESET");
    KH_Helper.safePrint("#########################");
    KH_Helper.safePrint("#########################");
    //@@@@@//
    notifyListeners();
    //@@@@@//
  }

  Future<void> reSetFonts2() async {
    //@@@@@@@@@@@@@@@@//
    //@@@@@@@@@@@@@@@@//
    final isEnglish = await KH_Languages.isEnglishLanguage();
    if (isEnglish) {
      _themeObject = ThemeObject(
        fontType: (KH_Responsivenes.isIOS() == true)
            ? FontTypeEnum.SF_Pro_Font
            : FontTypeEnum.NotoSans,
      );
    } else {
      _themeObject = ThemeObject(
        fontType: (KH_Responsivenes.isIOS() == true)
            ? FontTypeEnum.SF_Pro_Font
            : FontTypeEnum.SF_Pro_Font,
      );
    }
    //@@@@@@@@@@@@@@@@//
    //@@@@@@@@@@@@@@@@//
    KH_Helper.safePrint("#########################");
    KH_Helper.safePrint("#########################");
    KH_Helper.safePrint("FONTS ARE RESET");
    KH_Helper.safePrint("#########################");
    KH_Helper.safePrint("#########################");
    //@@@@@//
    // notifyListeners();
    //@@@@@//
  }
  //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
  //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class KH_THEME {
  //=======================================//
  //=======================================//
  //=======================================//
  //=======================================//
  // return theme depends on provided theme type

  static ThemeData getSellectedTheme({
    required ThemeMode themeMode,
    required ThemeObject themeObject,
  }) {
    if (themeMode == ThemeMode.system) {
      var brightness = SchedulerBinding.instance.window.platformBrightness;
      bool isDarkModeOn = brightness == Brightness.dark;
      // var brightness = MediaQuery.of(cntxt).platformBrightness;
      // bool isDarkModeOn = brightness == Brightness.dark;

      if (isDarkModeOn) {
        KH_Helper.safePrint("will return dark theme");
        return darkThemeData(themeObject: themeObject);
      } else {
        KH_Helper.safePrint("will return light theme");
        return lightThemeData(themeObject: themeObject);
      }
    } else if (themeMode == ThemeMode.light) {
      return lightThemeData(themeObject: themeObject);
    } else if (themeMode == ThemeMode.dark) {
      return darkThemeData(themeObject: themeObject);
    }

    return lightThemeData(themeObject: themeObject);
  }

  //=======================================//
  //=======================================// light theme
  //=======================================// light theme
  //=======================================//

  static ThemeData lightThemeData({
    required ThemeObject themeObject,
  }) {
    return ThemeData.light().copyWith(
      //
      extensions: <ThemeExtension<dynamic>>[
        KH_Colors.light,
      ],
      //
      brightness: Brightness.light,
      primaryColor: themeObject.lightThemePrimeryColor,
      canvasColor: Colors.transparent,
      scaffoldBackgroundColor: themeObject.lightThemeBGColor,
      secondaryHeaderColor: themeObject.lightThemeBG2Color,
      dialogBackgroundColor: K_LIGHT_THEME_CARDS_COLOR,
      cardColor: K_LIGHT_THEME_CARDS_COLOR,
      hintColor: themeObject.lightThemeSubTitelsColor,
      highlightColor: themeObject.lightThemePrimeryColor!.withOpacity(0.2),
      splashColor: themeObject.lightThemePrimeryColor!.withOpacity(0.2),
      disabledColor: K_LIGHT_THEME_FILLS_COLOR,
      iconTheme: IconThemeData(color: themeObject.lightThemePrimeryColor),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(
            themeObject.lightThemePrimeryColor,
          ),
        ),
      ),
      primaryIconTheme: IconThemeData(
        color: themeObject.lightThemePrimeryColor,
      ),
      //@@@@@ text Theme @@@@@//
      textTheme: getTextTheme(
        themeObject: themeObject,
        isLightMode: true,
      ),
      //@@@@@ color Scheme @@@@@//
      colorScheme: ColorScheme.light().copyWith(
        primary: themeObject.lightThemePrimeryColor,
        secondary: themeObject.lightThemePrimeryColor,
        error: K_LIGHT_THEME_RED_COLOR,
        background: K_LIGHT_THEME_BG_COLOR,
        brightness: Brightness.light,
      ),
      //@@@@@ nav bar @@@@@//
      appBarTheme: AppBarTheme(
        // color: K_LIGHT_THEME_NAV_BAR_COLOR,
        backgroundColor: themeObject.lightThemeNavBarColor,
        centerTitle: true,
        elevation: 0.5,
        shadowColor: themeObject.lightThemeSubTitelsColor?.withOpacity(0.2),
        actionsIconTheme:
            IconThemeData(color: themeObject.lightThemePrimeryColor),
        iconTheme: IconThemeData(color: themeObject.lightThemePrimeryColor),
        titleTextStyle: getAppBarTextStyle(
          themeObject: themeObject,
          isLightMode: true,
        ),
        surfaceTintColor: themeObject.lightThemeNavBarColor,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      //@@@@@ tab bar @@@@@//
      tabBarTheme: getTabBarTheme(themeObject: themeObject),
      //@@@@@ floating Action @@@@@//
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: themeObject.lightThemePrimeryColor,
        // splashColor: Colors.white.withAlpha(100),
        // highlightElevation: 8,
        // elevation: 4,
        // focusColor: Color(0xff3d63ff),
        // hoverColor: Color(0xff3d63ff),
        foregroundColor: Colors.white,
      ),
      //@@@@@     @@@@@//
      dividerColor: themeObject.lightThemeSubTitelsColor?.withOpacity(0.2),
      dividerTheme: DividerThemeData(
          color: themeObject.lightThemeSubTitelsColor?.withOpacity(0.2)),
      //@@@@@ tab bar @@@@@//
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: themeObject.lightThemeTabBarColor,
        selectedItemColor: themeObject.lightThemePrimeryColor,
        unselectedItemColor: themeObject.lightThemeSubTitelsColor,
        selectedIconTheme:
            IconThemeData(color: themeObject.lightThemePrimeryColor),
        showUnselectedLabels: true,
      ),
      //@@@@@ others @@@@@//
      chipTheme: ChipThemeData(
          backgroundColor:
              themeObject.lightThemeSubTitelsColor?.withOpacity(0.2),
          side: BorderSide(
            color: themeObject.lightThemeSubTitelsColor!.withOpacity(0.2),
          )),
      //@@@@@ others @@@@@//
      inputDecorationTheme: InputDecorationTheme(
        fillColor: themeObject.lightThemeSubTitelsColor!.withOpacity(0.1),
        prefixIconColor: themeObject.lightThemeSubTitelsColor?.withOpacity(1),
        suffixIconColor: themeObject.lightThemeSubTitelsColor?.withOpacity(1),
      ),
      //@@@@@ others @@@@@//
    );
  }

  //=======================================//
  //=======================================// dark theme
  //=======================================// dark theme
  //=======================================//

  static ThemeData darkThemeData({
    required ThemeObject themeObject,
  }) {
    return ThemeData.dark().copyWith(
      //
      extensions: <ThemeExtension<dynamic>>[
        KH_Colors.dark,
      ],
      //
      brightness: Brightness.dark,
      primaryColor: themeObject.darkThemePrimeryColor,
      canvasColor: Colors.transparent,
      scaffoldBackgroundColor: themeObject.darkThemeBGColor,
      secondaryHeaderColor: themeObject.darkThemeBG2Color,
      dialogBackgroundColor: K_DARK_THEME_CARDS_COLOR,
      cardColor: K_DARK_THEME_CARDS_COLOR,
      hintColor: themeObject.darkThemeSubTitelsColor,
      highlightColor: themeObject.darkThemePrimeryColor!.withOpacity(0.2),
      splashColor: themeObject.darkThemePrimeryColor!.withOpacity(0.2),
      disabledColor: K_DARK_THEME_FILLS_COLOR,
      iconTheme: IconThemeData(
        color: themeObject.darkThemePrimeryColor,
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(
            themeObject.darkThemePrimeryColor,
          ),
        ),
      ),
      //@@@@@ text Theme @@@@@//
      textTheme: getTextTheme(
        themeObject: themeObject,
        isLightMode: false,
      ),
      //@@@@@ color Scheme @@@@@//
      colorScheme: ColorScheme.light().copyWith(
        primary: themeObject.darkThemePrimeryColor,
        secondary: themeObject.darkThemePrimeryColor,
        error: K_DARK_THEME_RED_COLOR,
        background: K_DARK_THEME_BG_COLOR,
        brightness: Brightness.dark,
      ),
      //@@@@@ nav bar @@@@@//
      appBarTheme: AppBarTheme(
        // color: K_DARK_THEME_NAV_BAR_COLOR,
        backgroundColor:
            themeObject.darkThemeNavBarColor, // K_DARK_THEME_NAV_BAR_COLOR,
        centerTitle: true,
        elevation: 0.5,
        shadowColor: themeObject.darkThemeSubTitelsColor?.withOpacity(0.2),
        actionsIconTheme: IconThemeData(
          color: themeObject.darkThemePrimeryColor,
        ),
        iconTheme: IconThemeData(
          color: themeObject.darkThemePrimeryColor,
        ),
        // textTheme: darkAppBarTextTheme,
        titleTextStyle: getAppBarTextStyle(
          themeObject: themeObject,
          isLightMode: false,
        ),
        surfaceTintColor: themeObject.darkThemeNavBarColor,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      //@@@@@ tab bar @@@@@//
      tabBarTheme: getTabBarTheme(themeObject: themeObject),
      //@@@@@ floating Action @@@@@//
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: themeObject.darkThemePrimeryColor,
        // splashColor: Colors.white.withAlpha(100),
        // highlightElevation: 8,
        // elevation: 4,
        // focusColor: Color(0xff3d63ff),
        // hoverColor: Color(0xff3d63ff),
        foregroundColor: Colors.white,
        // splashColor: themeObject.darkThemeTitelsColor?.withOpacity(0.5),
      ),
      //@@@@@     @@@@@//
      dividerColor: themeObject.darkThemeSubTitelsColor?.withOpacity(0.2),
      dividerTheme: DividerThemeData(
          color: themeObject.darkThemeSubTitelsColor?.withOpacity(
        0.2,
      )),
      //@@@@@ tab bar @@@@@//
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor:
            themeObject.darkThemeTabBarColor, // K_DARK_THEME_TAB_BAR_COLOR,
        selectedItemColor: themeObject.darkThemePrimeryColor,
        unselectedItemColor: themeObject
            .darkThemeSubTitelsColor, // K_DARK_THEME_SUB_TITELS_COLOR,
        selectedIconTheme:
            IconThemeData(color: themeObject.darkThemePrimeryColor),
        showUnselectedLabels: true,
      ),
      //@@@@@ others @@@@@//
      chipTheme: ChipThemeData(
          backgroundColor:
              themeObject.darkThemeSubTitelsColor?.withOpacity(0.2),
          side: BorderSide(
            color: themeObject.darkThemeSubTitelsColor!.withOpacity(0.2),
          )),
      //@@@@@ others @@@@@//
      inputDecorationTheme: InputDecorationTheme(
        fillColor: themeObject.darkThemeSubTitelsColor!.withOpacity(0.1),
        prefixIconColor: themeObject.darkThemeSubTitelsColor?.withOpacity(1),
        suffixIconColor: themeObject.darkThemeSubTitelsColor?.withOpacity(1),
      ),
      //@@@@@ others @@@@@//
    );
  }

/* 
  static ThemeData lightThemeData({
    required ThemeObject themeObject,
  }) {
    return ThemeData.light().copyWith(
      //
      extensions: <ThemeExtension<dynamic>>[
        KH_Colors.light,
      ],
      //
      brightness: Brightness.light,
      primaryColor: themeObject.lightThemePrimeryColor,
      canvasColor: Colors.transparent,
      scaffoldBackgroundColor: themeObject.lightThemeBGColor,
      secondaryHeaderColor: themeObject.lightThemeBG2Color,
      dialogBackgroundColor: K_LIGHT_THEME_CARDS_COLOR,
      cardColor: K_LIGHT_THEME_CARDS_COLOR,
      hintColor: themeObject.lightThemeSubTitelsColor,
      highlightColor: themeObject.lightThemePrimeryColor!.withOpacity(0.2),
      splashColor: themeObject.lightThemePrimeryColor!.withOpacity(0.2),
      disabledColor: K_LIGHT_THEME_FILLS_COLOR,
      iconTheme: IconThemeData(color: themeObject.lightThemePrimeryColor),
      //@@@@@ text Theme @@@@@//
      textTheme: getTextTheme(
        themeObject: themeObject,
        isLightMode: true,
      ),
      //@@@@@ color Scheme @@@@@//
      colorScheme: ColorScheme.light().copyWith(
        primary: themeObject.lightThemePrimeryColor,
        secondary: themeObject.lightThemePrimeryColor,
        error: K_LIGHT_THEME_RED_COLOR,
        background: K_LIGHT_THEME_BG_COLOR,
        brightness: Brightness.light,
      ),
      //@@@@@ nav bar @@@@@//
      appBarTheme: AppBarTheme(
        // color: K_LIGHT_THEME_NAV_BAR_COLOR,
        backgroundColor: themeObject.lightThemeNavBarColor,
        centerTitle: true,
        elevation: 0.5,
        actionsIconTheme:
            IconThemeData(color: themeObject.lightThemePrimeryColor),
        iconTheme: IconThemeData(color: themeObject.lightThemePrimeryColor),
        titleTextStyle: getAppBarTextStyle(
          themeObject: themeObject,
          isLightMode: true,
        ),
      ),
      //@@@@@ tab bar @@@@@//
      tabBarTheme: getTabBarTheme(themeObject: themeObject),
      //@@@@@ floating Action @@@@@//
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: themeObject.lightThemePrimeryColor,
        // splashColor: Colors.white.withAlpha(100),
        // highlightElevation: 8,
        // elevation: 4,
        // focusColor: Color(0xff3d63ff),
        // hoverColor: Color(0xff3d63ff),
        foregroundColor: Colors.white,
      ),
      //@@@@@ tab bar @@@@@//
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: themeObject.lightThemeTabBarColor,
        selectedItemColor: themeObject.lightThemePrimeryColor,
        unselectedItemColor: themeObject.lightThemeSubTitelsColor,
        selectedIconTheme:
            IconThemeData(color: themeObject.lightThemePrimeryColor),
        showUnselectedLabels: true,
      ),
      //@@@@@ others @@@@@//
      // inputDecorationTheme: InputDecorationTheme(),
    );
  }

  //=======================================//
  //=======================================// dark theme
  //=======================================// dark theme
  //=======================================//

  static ThemeData darkThemeData({
    required ThemeObject themeObject,
  }) {
    return ThemeData.dark().copyWith(
      //
      extensions: <ThemeExtension<dynamic>>[
        KH_Colors.dark,
      ],
      //
      brightness: Brightness.dark,
      primaryColor: themeObject.darkThemePrimeryColor,
      canvasColor: Colors.transparent,
      scaffoldBackgroundColor: themeObject.darkThemeBGColor,
      secondaryHeaderColor: themeObject.darkThemeBG2Color,
      dialogBackgroundColor: K_DARK_THEME_CARDS_COLOR,
      cardColor: K_DARK_THEME_CARDS_COLOR,
      hintColor: themeObject.darkThemeSubTitelsColor,
      highlightColor: themeObject.darkThemePrimeryColor!.withOpacity(0.2),
      splashColor: themeObject.darkThemePrimeryColor!.withOpacity(0.2),
      disabledColor: K_DARK_THEME_FILLS_COLOR,
      iconTheme: IconThemeData(
        color: themeObject.darkThemePrimeryColor,
      ),
      //@@@@@ text Theme @@@@@//
      textTheme: getTextTheme(
        themeObject: themeObject,
        isLightMode: false,
      ),
      //@@@@@ color Scheme @@@@@//
      colorScheme: ColorScheme.light().copyWith(
        primary: themeObject.darkThemePrimeryColor,
        secondary: themeObject.darkThemePrimeryColor,
        error: K_DARK_THEME_RED_COLOR,
        background: K_DARK_THEME_BG_COLOR,
        brightness: Brightness.dark,
      ),
      //@@@@@ nav bar @@@@@//
      appBarTheme: AppBarTheme(
        // color: K_DARK_THEME_NAV_BAR_COLOR,
        backgroundColor:
            themeObject.darkThemeNavBarColor, // K_DARK_THEME_NAV_BAR_COLOR,
        centerTitle: true,
        elevation: 0.5,
        actionsIconTheme: IconThemeData(
          color: themeObject.darkThemePrimeryColor,
        ),
        iconTheme: IconThemeData(
          color: themeObject.darkThemePrimeryColor,
        ),
        // textTheme: darkAppBarTextTheme,
        titleTextStyle: getAppBarTextStyle(
          themeObject: themeObject,
          isLightMode: false,
        ),
      ),
      //@@@@@ tab bar @@@@@//
      tabBarTheme: getTabBarTheme(themeObject: themeObject),
      //@@@@@ floating Action @@@@@//
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: themeObject.darkThemePrimeryColor,
        // splashColor: Colors.white.withAlpha(100),
        // highlightElevation: 8,
        // elevation: 4,
        // focusColor: Color(0xff3d63ff),
        // hoverColor: Color(0xff3d63ff),
        foregroundColor: Colors.white,
        // splashColor: themeObject.darkThemeTitelsColor?.withOpacity(0.5),
      ),
      //@@@@@ tab bar @@@@@//
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor:
            themeObject.darkThemeTabBarColor, // K_DARK_THEME_TAB_BAR_COLOR,
        selectedItemColor: themeObject.darkThemePrimeryColor,
        unselectedItemColor: themeObject
            .darkThemeSubTitelsColor, // K_DARK_THEME_SUB_TITELS_COLOR,
        selectedIconTheme:
            IconThemeData(color: themeObject.darkThemePrimeryColor),
        showUnselectedLabels: true,
      ),
      //@@@@@ others @@@@@//
      // inputDecorationTheme: InputDecorationTheme(),
    );
  }
 */
  //=======================================//
  //=======================================// getTextStyle
  //=======================================// getTextStyle
  //=======================================//

  static TextStyle getThemeTextStyle({
    required ThemeObject themeObject,
    required bool isLightMode,
    double? fontSizee,
    FontWeight? fontWeight,
    Color? textColor,
  }) {
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@// CIRO
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    if (themeObject.fontType == FontTypeEnum.CiroFont) {
      return GoogleFonts.cairo(
        textStyle: TextStyle(
          fontSize: fontSizee,
          fontWeight: fontWeight,
          color: (textColor != null)
              ? textColor
              : isLightMode
                  ? themeObject.lightThemeTitelsColor
                  : themeObject.darkThemeTitelsColor,
        ),
      );
    }
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@// NTO
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    else if (themeObject.fontType == FontTypeEnum.NotoSans) {
      return GoogleFonts.notoSans(
        textStyle: TextStyle(
          fontSize: fontSizee,
          fontWeight: fontWeight,
          color: (textColor != null)
              ? textColor
              : isLightMode
                  ? themeObject.lightThemeTitelsColor
                  : themeObject.darkThemeTitelsColor,
        ),
      );
    }
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@// DUBAI
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    else if (themeObject.fontType == FontTypeEnum.DubaiFont) {
      return TextStyle(
        fontFamily: K_FONT_FAMILY_DUBAI,
        fontSize: fontSizee,
        fontWeight: fontWeight,
        color: (textColor != null)
            ? textColor
            : isLightMode
                ? themeObject.lightThemeTitelsColor
                : themeObject.darkThemeTitelsColor,
      );
    }
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@// SF APPLE
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    else if (themeObject.fontType == FontTypeEnum.SF_Pro_Font) {
      return TextStyle(
        fontFamily: K_FONT_FAMILY_SF_ARABIC,
        fontSize: fontSizee,
        fontWeight: fontWeight,
        color: (textColor != null)
            ? textColor
            : isLightMode
                ? themeObject.lightThemeTitelsColor
                : themeObject.darkThemeTitelsColor,
      );
    }
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@// AL MARAI
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    else if (themeObject.fontType == FontTypeEnum.AlmaraiFont) {
      return TextStyle(
        fontFamily: K_FONT_FAMILY_SF_ALMARAI,
        fontSize: fontSizee,
        fontWeight: fontWeight,
        color: (textColor != null)
            ? textColor
            : isLightMode
                ? themeObject.lightThemeTitelsColor
                : themeObject.darkThemeTitelsColor,
      );
    }
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@// ELSE
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    else {
      return TextStyle(
        fontSize: fontSizee,
        fontWeight: fontWeight,
        color: (textColor != null)
            ? textColor
            : isLightMode
                ? themeObject.lightThemeTitelsColor
                : themeObject.darkThemeTitelsColor,
      );
    }
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
  }

  //=======================================//
  //=======================================//  Text Themes
  //=======================================//  Text Themes
  //=======================================//

  static TextTheme getTextTheme({
    required ThemeObject themeObject,
    required bool isLightMode,
  }) {
    return TextTheme(
      //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
      //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@// DISPLAY
      //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
      // displayLarge: getThemeTextStyle(
      //   themeObject: themeObject,
      //   isLightMode: isLightMode,
      //   // fontSizee: 20,
      // ),
      // displayMedium: getThemeTextStyle(
      //   themeObject: themeObject,
      //   isLightMode: isLightMode,
      //   // fontSizee: 20,
      // ),
      // displaySmall: getThemeTextStyle(
      //   themeObject: themeObject,
      //   isLightMode: isLightMode,
      //   // fontSizee: 20,
      // ),
      //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
      //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@// HEADLINE
      //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
      // headlineLarge: getThemeTextStyle(
      //   themeObject: themeObject,
      //   isLightMode: isLightMode,
      //   // fontSizee: 20,
      // ),
      // headlineMedium: getThemeTextStyle(
      //   themeObject: themeObject,
      //   isLightMode: isLightMode,
      //   // fontSizee: 18,
      // ),
      // headlineSmall: getThemeTextStyle(
      //   themeObject: themeObject,
      //   isLightMode: isLightMode,
      //   // fontSizee: 16,
      // ),
      //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
      //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@// TITLE
      //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
      titleLarge: getThemeTextStyle(
        themeObject: themeObject,
        isLightMode: isLightMode,
        fontSizee: 20,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: getThemeTextStyle(
        themeObject: themeObject,
        isLightMode: isLightMode,
        fontSizee: 18,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: getThemeTextStyle(
        themeObject: themeObject,
        isLightMode: isLightMode,
        fontSizee: 16,
        fontWeight: FontWeight.bold,
      ),
      //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
      //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@// BODY
      //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
      bodyLarge: getThemeTextStyle(
        themeObject: themeObject,
        isLightMode: isLightMode,
        fontSizee: 18,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: getThemeTextStyle(
        themeObject: themeObject,
        isLightMode: isLightMode,
        fontSizee: 16,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: getThemeTextStyle(
        themeObject: themeObject,
        isLightMode: isLightMode,
        fontSizee: 14,
        fontWeight: FontWeight.normal,
      ),
      //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
      //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@// LABLE
      //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
      labelLarge: getThemeTextStyle(
        themeObject: themeObject,
        isLightMode: isLightMode,
        fontSizee: 14,
        fontWeight: FontWeight.normal,
        textColor: isLightMode
            ? themeObject.lightThemeSubTitelsColor
            : themeObject.darkThemeSubTitelsColor,
      ),
      labelMedium: getThemeTextStyle(
        themeObject: themeObject,
        isLightMode: isLightMode,
        fontSizee: 12,
        fontWeight: FontWeight.normal,
        textColor: isLightMode
            ? themeObject.lightThemeSubTitelsColor
            : themeObject.darkThemeSubTitelsColor,
      ),
      labelSmall: getThemeTextStyle(
        themeObject: themeObject,
        isLightMode: isLightMode,
        fontSizee: 10,
        fontWeight: FontWeight.normal,
        textColor: isLightMode
            ? themeObject.lightThemeSubTitelsColor
            : themeObject.darkThemeSubTitelsColor,
      ),
      //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
      //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
      //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    );
  }

  //=======================================//
  //=======================================// app bar text style
  //=======================================// app bar text style
  //=======================================//

  static TextStyle getAppBarTextStyle({
    required ThemeObject themeObject,
    required bool isLightMode,
  }) {
    return getThemeTextStyle(
      themeObject: themeObject,
      isLightMode: isLightMode,
      fontSizee: 18,
      fontWeight: FontWeight.bold,
      textColor: themeObject.lightThemeNavBarTextColor,
    );
  }

  //=======================================//
  //=======================================// tab bar text theme
  //=======================================// tab bar text theme
  //=======================================//

  static TabBarTheme getTabBarTheme({
    required ThemeObject themeObject,
  }) {
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    if (themeObject.fontType == FontTypeEnum.CiroFont) {
      return TabBarTheme(
        labelStyle: GoogleFonts.cairo(
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: GoogleFonts.cairo(
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      );
    }
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    else if (themeObject.fontType == FontTypeEnum.NotoSans) {
      return TabBarTheme(
        labelStyle: GoogleFonts.notoSans(
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: GoogleFonts.notoSans(
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      );
    }
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    else if (themeObject.fontType == FontTypeEnum.DubaiFont) {
      return TabBarTheme(
        labelStyle: TextStyle(
          fontFamily: K_FONT_FAMILY_DUBAI,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: K_FONT_FAMILY_DUBAI,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      );
    }
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    else if (themeObject.fontType == FontTypeEnum.SF_Pro_Font) {
      return TabBarTheme(
        labelStyle: TextStyle(
          fontFamily: K_FONT_FAMILY_SF_ARABIC,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: K_FONT_FAMILY_SF_ARABIC,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      );
    }
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    else if (themeObject.fontType == FontTypeEnum.AlmaraiFont) {
      return TabBarTheme(
        labelStyle: TextStyle(
          fontFamily: K_FONT_FAMILY_SF_ALMARAI,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: K_FONT_FAMILY_SF_ALMARAI,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      );
    }
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    else {
      return TabBarTheme(
        labelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      );
    }
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
    //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
  }

  //=======================================//
  //=======================================// tab bar text theme
  //=======================================// tab bar text theme
  //=======================================//
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//



// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

// // final _KH_Colors = _theme.extension<KH_Colors>()!;

// @immutable
// class KH_Colors extends ThemeExtension<KH_Colors> {
//   final Color PrimeryColor;
//   final Color NavBarColor;
//   final Color NavBarTextColor;
//   final Color TabBarColor;
//   final Color TitelsColor;
//   final Color SubTitelsColor;
//   final Color TextsColor;
//   final Color ButtonsTextsColor;
//   final Color TextFieldsColor;
//   final Color BGColor;
//   final Color BG2Color;
//   final Color CardColor;
//   final Color Card2Color;
//   final Color CellsColor;
//   final Color FillsColor;
//   final Color GreenColor;
//   final Color RedColor;
//   final Color CardShadowColor;

//   const KH_Colors({
//     required this.PrimeryColor,
//     required this.NavBarColor,
//     required this.NavBarTextColor,
//     required this.TabBarColor,
//     required this.TitelsColor,
//     required this.SubTitelsColor,
//     required this.TextsColor,
//     required this.ButtonsTextsColor,
//     required this.TextFieldsColor,
//     required this.BGColor,
//     required this.BG2Color,
//     required this.CardColor,
//     required this.Card2Color,
//     required this.CellsColor,
//     required this.FillsColor,
//     required this.GreenColor,
//     required this.RedColor,
//     required this.CardShadowColor,
//   });

// //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
// //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// COPY WITH
// //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//

//   @override
//   KH_Colors copyWith({
//     Color? PrimeryColor,
//     Color? NavBarColor,
//     Color? NavBarTextColor,
//     Color? TabBarColor,
//     Color? TitelsColor,
//     Color? SubTitelsColor,
//     Color? TextsColor,
//     Color? ButtonsTextsColor,
//     Color? TextFieldsColor,
//     Color? BGColor,
//     Color? BG2Color,
//     Color? CardColor,
//     Color? Card2Color,
//     Color? CellsColor,
//     Color? FillsColor,
//     Color? GreenColor,
//     Color? RedColor,
//     Color? CardShadowColor,
//   }) {
//     return KH_Colors(
//       PrimeryColor: PrimeryColor ?? this.PrimeryColor,
//       NavBarColor: NavBarColor ?? this.NavBarColor,
//       NavBarTextColor: NavBarTextColor ?? this.NavBarTextColor,
//       TabBarColor: TabBarColor ?? this.TabBarColor,
//       TitelsColor: TitelsColor ?? this.TitelsColor,
//       SubTitelsColor: SubTitelsColor ?? this.SubTitelsColor,
//       TextsColor: TextsColor ?? this.TextsColor,
//       ButtonsTextsColor: ButtonsTextsColor ?? this.ButtonsTextsColor,
//       TextFieldsColor: TextFieldsColor ?? this.TextFieldsColor,
//       BGColor: BGColor ?? this.BGColor,
//       BG2Color: BG2Color ?? this.BG2Color,
//       CardColor: CardColor ?? this.CardColor,
//       Card2Color: Card2Color ?? this.Card2Color,
//       CellsColor: CellsColor ?? this.CellsColor,
//       FillsColor: FillsColor ?? this.FillsColor,
//       GreenColor: GreenColor ?? this.GreenColor,
//       RedColor: RedColor ?? this.RedColor,
//       CardShadowColor: CardShadowColor ?? this.CardShadowColor,
//     );
//   }

// //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
// //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// LERP
// //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//

//   @override
//   KH_Colors lerp(ThemeExtension<KH_Colors>? other, double t) {
//     if (other is! KH_Colors) {
//       return this;
//     }
//     return KH_Colors(
//       PrimeryColor:
//           Color.lerp(PrimeryColor, other.PrimeryColor, t) ?? PrimeryColor,
//       NavBarColor: Color.lerp(NavBarColor, other.NavBarColor, t) ?? NavBarColor,
//       NavBarTextColor: Color.lerp(NavBarTextColor, other.NavBarTextColor, t) ??
//           NavBarTextColor,
//       TabBarColor: Color.lerp(TabBarColor, other.TabBarColor, t) ?? TabBarColor,
//       TitelsColor: Color.lerp(TitelsColor, other.TitelsColor, t) ?? TitelsColor,
//       SubTitelsColor:
//           Color.lerp(SubTitelsColor, other.SubTitelsColor, t) ?? SubTitelsColor,
//       TextsColor: Color.lerp(TextsColor, other.TextsColor, t) ?? TextsColor,
//       ButtonsTextsColor:
//           Color.lerp(ButtonsTextsColor, other.ButtonsTextsColor, t) ??
//               ButtonsTextsColor,
//       TextFieldsColor: Color.lerp(TextFieldsColor, other.TextFieldsColor, t) ??
//           TextFieldsColor,
//       BGColor: Color.lerp(BGColor, other.BGColor, t) ?? BGColor,
//       BG2Color: Color.lerp(BG2Color, other.BG2Color, t) ?? BG2Color,
//       CardColor: Color.lerp(CardColor, other.CardColor, t) ?? CardColor,
//       Card2Color: Color.lerp(Card2Color, other.Card2Color, t) ?? Card2Color,
//       CellsColor: Color.lerp(CellsColor, other.CellsColor, t) ?? CellsColor,
//       FillsColor: Color.lerp(FillsColor, other.FillsColor, t) ?? FillsColor,
//       GreenColor: Color.lerp(GreenColor, other.GreenColor, t) ?? GreenColor,
//       RedColor: Color.lerp(RedColor, other.RedColor, t) ?? RedColor,
//       CardShadowColor: Color.lerp(CardShadowColor, other.CardShadowColor, t) ??
//           CardShadowColor,
//     );
//   }

// //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
// //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// LIGHT
// //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
// // the light theme
//   static const light = KH_Colors(
//     PrimeryColor: K_LIGHT_THEME_MAIN_COLOR,
//     NavBarColor: K_LIGHT_THEME_NAV_BAR_COLOR,
//     NavBarTextColor: K_LIGHT_THEME_APPBAR_TEXT_COLOR,
//     TabBarColor: K_LIGHT_THEME_TAB_BAR_COLOR,
//     TitelsColor: K_LIGHT_THEME_TITELS_COLOR,
//     SubTitelsColor: K_LIGHT_THEME_SUB_TITELS_COLOR,
//     TextsColor: K_LIGHT_THEME_TEXTS_COLOR,
//     ButtonsTextsColor: K_LIGHT_THEME_BUTTONS_TEXT_COLOR,
//     TextFieldsColor: K_LIGHT_THEME_TEXT_FIELDS_COLOR,
//     BGColor: K_LIGHT_THEME_BG_COLOR,
//     BG2Color: K_LIGHT_THEME_BG2_COLOR,
//     CardColor: K_LIGHT_THEME_CARDS_COLOR,
//     Card2Color: K_LIGHT_THEME_CARDS_COLOR2,
//     CellsColor: K_LIGHT_THEME_CELLS_COLOR,
//     FillsColor: K_LIGHT_THEME_FILLS_COLOR,
//     GreenColor: K_LIGHT_THEME_GREEN_COLOR,
//     RedColor: K_LIGHT_THEME_RED_COLOR,
//     CardShadowColor: K_LIGHT_THEME_CARD_SHADOW_COLOR,
//   );

// //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
// //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// DARK
// //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
// // the dark theme
//   static const dark = KH_Colors(
//     PrimeryColor: K_DARK_THEME_MAIN_COLOR,
//     NavBarColor: K_DARK_THEME_NAV_BAR_COLOR,
//     NavBarTextColor: K_DARK_THEME_APPBAR_TEXT_COLOR,
//     TabBarColor: K_DARK_THEME_TAB_BAR_COLOR,
//     TitelsColor: K_DARK_THEME_TITELS_COLOR,
//     SubTitelsColor: K_DARK_THEME_SUB_TITELS_COLOR,
//     TextsColor: K_DARK_THEME_TEXTS_COLOR,
//     ButtonsTextsColor: K_DARK_THEME_BUTTONS_TEXT_COLOR,
//     TextFieldsColor: K_DARK_THEME_TEXT_FIELDS_COLOR,
//     BGColor: K_DARK_THEME_BG_COLOR,
//     BG2Color: K_DARK_THEME_BG2_COLOR,
//     CardColor: K_DARK_THEME_CARDS_COLOR,
//     Card2Color: K_DARK_THEME_CARDS_COLOR2,
//     CellsColor: K_DARK_THEME_CELLS_COLOR,
//     FillsColor: K_DARK_THEME_FILLS_COLOR,
//     GreenColor: K_DARK_THEME_GREEN_COLOR,
//     RedColor: K_DARK_THEME_RED_COLOR,
//     CardShadowColor: K_DARK_THEME_CARD_SHADOW_COLOR,
//   );
// //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
// //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
// //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
// }

// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

// const K_SELLECTED_THEME_KEY = "K_SELLECTED_THEME_KEY";

// enum ThemeTypeEnum {
//   SystemTheme,
//   LightTheme,
//   DarkTheme,
// }

// extension ThemeTypeEnumString on ThemeTypeEnum {
//   String get rawValue => describeEnum(this);
// }

// //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//

// const K_FONT_FAMILY_DUBAI = "Dubai";
// // const K_FONT_FAMILY_SF_PRO = "SF Pro Text";
// const K_FONT_FAMILY_SF_ARABIC = "SF Arabic";
// const K_FONT_FAMILY_SF_ALMARAI = "almarai";

// enum FontTypeEnum {
//   CiroFont,
//   DubaiFont,
//   SF_Pro_Font,
//   SystemFont,
//   NotoSans,
//   AlmaraiFont,
// }

// extension FontTypeEnumString on FontTypeEnum {
//   String get rawValue => describeEnum(this);
// }

// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

// class ThemeObject {
//   FontTypeEnum? fontType;
//   //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// primery
//   Color? lightThemePrimeryColor;
//   Color? darkThemePrimeryColor;
//   //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// nav bar
//   Color? lightThemeNavBarColor;
//   Color? darkThemeNavBarColor;
//   //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// nav bar text
//   Color? lightThemeNavBarTextColor;
//   Color? darkThemeNavBarTextColor;
//   //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// tab bar
//   Color? lightThemeTabBarColor;
//   Color? darkThemeTabBarColor;
//   //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// titels
//   Color? lightThemeTitelsColor;
//   Color? darkThemeTitelsColor;
//   //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// sub titles
//   Color? lightThemeSubTitelsColor;
//   Color? darkThemeSubTitelsColor;
//   //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// texts
//   Color? lightThemeTextsColor;
//   Color? darkThemeTextsColor;
//   //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// buttons texts
//   Color? lightThemeButtonsTextsColor;
//   Color? darkThemeButtonsTextsColor;
//   //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// text fields
//   Color? lightThemeTextFieldsColor;
//   Color? darkThemeTextFieldsColor;
//   //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// bg color
//   Color? lightThemeBGColor;
//   Color? darkThemeBGColor;
//   //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// bg color 2
//   Color? lightThemeBG2Color;
//   Color? darkThemeBG2Color;
//   //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//   ThemeObject({
//     // this.fontType = FontTypeEnum.SF_Pro_Font,
//     required this.fontType,
//     //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// primery
//     this.lightThemePrimeryColor = K_LIGHT_THEME_MAIN_COLOR,
//     this.darkThemePrimeryColor = K_DARK_THEME_MAIN_COLOR,
//     //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// nav bar
//     this.lightThemeNavBarColor = K_LIGHT_THEME_NAV_BAR_COLOR,
//     this.darkThemeNavBarColor = K_DARK_THEME_NAV_BAR_COLOR,
//     //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// app bar text
//     this.lightThemeNavBarTextColor = K_LIGHT_THEME_APPBAR_TEXT_COLOR,
//     this.darkThemeNavBarTextColor = K_DARK_THEME_APPBAR_TEXT_COLOR,
//     //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// tab bar
//     this.lightThemeTabBarColor = K_LIGHT_THEME_TAB_BAR_COLOR,
//     this.darkThemeTabBarColor = K_DARK_THEME_TAB_BAR_COLOR,
//     //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// titles
//     this.lightThemeTitelsColor = K_LIGHT_THEME_TITELS_COLOR,
//     this.darkThemeTitelsColor = K_DARK_THEME_TITELS_COLOR,
//     //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// sub titles
//     this.lightThemeSubTitelsColor = K_LIGHT_THEME_SUB_TITELS_COLOR,
//     this.darkThemeSubTitelsColor = K_DARK_THEME_SUB_TITELS_COLOR,
//     //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// texts
//     this.lightThemeTextsColor = K_LIGHT_THEME_TEXTS_COLOR,
//     this.darkThemeTextsColor = K_DARK_THEME_TEXTS_COLOR,
//     //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// buttons texts
//     this.lightThemeButtonsTextsColor = K_LIGHT_THEME_BUTTONS_TEXT_COLOR,
//     this.darkThemeButtonsTextsColor = K_DARK_THEME_BUTTONS_TEXT_COLOR,
//     //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// text fields
//     this.lightThemeTextFieldsColor = K_LIGHT_THEME_TEXT_FIELDS_COLOR,
//     this.darkThemeTextFieldsColor = K_DARK_THEME_TEXT_FIELDS_COLOR,
//     //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// bg
//     this.lightThemeBGColor = K_LIGHT_THEME_BG_COLOR,
//     this.darkThemeBGColor = K_DARK_THEME_BG_COLOR,
//     //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@// bg 2
//     this.lightThemeBG2Color = K_LIGHT_THEME_BG2_COLOR,
//     this.darkThemeBG2Color = K_DARK_THEME_BG2_COLOR,
//     //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//   });
// }

// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

// class ThemesProvider extends ChangeNotifier {
//   //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//   //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//

//   // ThemeObject _themeObject = ThemeObject();

//   ThemeObject _themeObject = ThemeObject(
//     fontType: (KH_Responsivenes.isIOS() == true)
//         ? FontTypeEnum.SF_Pro_Font
//         : FontTypeEnum.NotoSans,
//   );

//   ThemeObject get getThemeObject {
//     return _themeObject;
//   }

//   void saveNewThemeObject({required ThemeObject themeObject}) {
//     _themeObject = themeObject;
//     notifyListeners();
//     KH_Helper.safePrint("              ");
//     KH_Helper.safePrint("==============");
//     KH_Helper.safePrint("saved themeObject to provider");
//     KH_Helper.safePrint("==============");
//     KH_Helper.safePrint("              ");
//     KH_Helper.safePrint(_themeObject.fontType?.rawValue);
//   }

//   //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//   //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//

//   ThemeMode _sellectedTheme = ThemeMode.system;
//   ThemeMode get getSellectedTheme => _sellectedTheme;

//   //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//   //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//   // Automaticly called when creating provider instance making sure that we check shared preference for value

//   ThemesProvider() {
//     init();
//   }
//   init() async {
//     //@@@@@@@@@@@@@@@@//
//     //@@@@@@@@@@@@@@@@//
//     final isEnglish = await KH_Languages.isEnglishLanguage();
//     if (isEnglish) {
//       _themeObject = ThemeObject(
//         fontType: (KH_Responsivenes.isIOS() == true)
//             ? FontTypeEnum.SF_Pro_Font
//             : FontTypeEnum.NotoSans,
//       );
//     } else {
//       _themeObject = ThemeObject(
//         fontType: (KH_Responsivenes.isIOS() == true)
//             ? FontTypeEnum.SF_Pro_Font
//             : FontTypeEnum.SF_Pro_Font,
//       );
//     }
//     //@@@@@@@@@@@@@@@@//
//     //@@@@@@@@@@@@@@@@//
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     String? themeType = sharedPreferences.getString(K_SELLECTED_THEME_KEY);
//     if (themeType == null) {
//       KH_Helper.safePrint(
//           "No theme is saved to shared preference , will turn system mode now");
//       _sellectedTheme = ThemeMode.system;
//     } else if (themeType == ThemeTypeEnum.SystemTheme.rawValue) {
//       KH_Helper.safePrint(
//           "System theme is saved to shared preference , will turn system mode now");
//       _sellectedTheme = ThemeMode.system;
//     } else if (themeType == ThemeTypeEnum.LightTheme.rawValue) {
//       KH_Helper.safePrint(
//           "Light theme is saved to shared preference , will turn Light mode now");
//       _sellectedTheme = ThemeMode.light;
//     } else if (themeType == ThemeTypeEnum.DarkTheme.rawValue) {
//       KH_Helper.safePrint(
//           "Dark theme is saved to shared preference , will turn Dark mode now");
//       _sellectedTheme = ThemeMode.dark;
//     } else {
//       _sellectedTheme = ThemeMode.system;
//     }
//     notifyListeners();
//   }

//   //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//   //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//   // use when set new theme

//   Future<void> setSellectedTheme({required ThemeTypeEnum newTheme}) async {
//     //@@@@@//
//     // if (newTheme == null) {
//     //   _sellectedTheme = ThemeMode.system;
//     // } else
//     if (newTheme == ThemeTypeEnum.SystemTheme) {
//       _sellectedTheme = ThemeMode.system;
//     } else if (newTheme == ThemeTypeEnum.LightTheme) {
//       _sellectedTheme = ThemeMode.light;
//     } else if (newTheme == ThemeTypeEnum.DarkTheme) {
//       _sellectedTheme = ThemeMode.dark;
//     } else {
//       _sellectedTheme = ThemeMode.system;
//     }
//     notifyListeners();
//     //@@@@@//
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     sharedPreferences.setString(
//       K_SELLECTED_THEME_KEY,
//       // newTheme.toString(),
//       newTheme.rawValue,
//     );
//     KH_Helper.safePrint("#########################");
//     KH_Helper.safePrint("#########################");
//     KH_Helper.safePrint("SAVED NEW THEME DATA TO SHARED PREFERENCE");
//     KH_Helper.safePrint("new theme is : ${newTheme.rawValue}");
//     KH_Helper.safePrint("#########################");
//     KH_Helper.safePrint("#########################");
//     //@@@@@//
//   }

//   //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//   //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//

//   Future<void> reSetFonts() async {
//     //@@@@@@@@@@@@@@@@//
//     //@@@@@@@@@@@@@@@@//
//     final isEnglish = await KH_Languages.isEnglishLanguage();
//     if (isEnglish) {
//       _themeObject = ThemeObject(
//         fontType: (KH_Responsivenes.isIOS() == true)
//             ? FontTypeEnum.SF_Pro_Font
//             : FontTypeEnum.NotoSans,
//       );
//     } else {
//       _themeObject = ThemeObject(
//         fontType: (KH_Responsivenes.isIOS() == true)
//             ? FontTypeEnum.SF_Pro_Font
//             : FontTypeEnum.SF_Pro_Font,
//       );
//     }
//     //@@@@@@@@@@@@@@@@//
//     //@@@@@@@@@@@@@@@@//
//     KH_Helper.safePrint("#########################");
//     KH_Helper.safePrint("#########################");
//     KH_Helper.safePrint("FONTS ARE RESET");
//     KH_Helper.safePrint("#########################");
//     KH_Helper.safePrint("#########################");
//     //@@@@@//
//     notifyListeners();
//     //@@@@@//
//   }

//   //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//   //@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
// }

// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

// class KH_THEME {
//   //=======================================//
//   //=======================================//
//   //=======================================//
//   //=======================================//
//   // return theme depends on provided theme type

//   static ThemeData getSellectedTheme({
//     required ThemeMode themeMode,
//     required ThemeObject themeObject,
//   }) {
//     if (themeMode == ThemeMode.system) {
//       var brightness = SchedulerBinding.instance.window.platformBrightness;
//       bool isDarkModeOn = brightness == Brightness.dark;
//       // var brightness = MediaQuery.of(cntxt).platformBrightness;
//       // bool isDarkModeOn = brightness == Brightness.dark;

//       if (isDarkModeOn) {
//         KH_Helper.safePrint("will return dark theme");
//         return darkThemeData(themeObject: themeObject);
//       } else {
//         KH_Helper.safePrint("will return light theme");
//         return lightThemeData(themeObject: themeObject);
//       }
//     } else if (themeMode == ThemeMode.light) {
//       return lightThemeData(themeObject: themeObject);
//     } else if (themeMode == ThemeMode.dark) {
//       return darkThemeData(themeObject: themeObject);
//     }

//     return lightThemeData(themeObject: themeObject);
//   }

//   //=======================================//
//   //=======================================// light theme
//   //=======================================// light theme
//   //=======================================//

//   static ThemeData lightThemeData({
//     required ThemeObject themeObject,
//   }) {
//     return ThemeData.light().copyWith(
//       //
//       extensions: <ThemeExtension<dynamic>>[
//         KH_Colors.light,
//       ],
//       //
//       brightness: Brightness.light,
//       primaryColor: themeObject.lightThemePrimeryColor,
//       canvasColor: Colors.transparent,
//       scaffoldBackgroundColor: themeObject.lightThemeBGColor,
//       secondaryHeaderColor: themeObject.lightThemeBG2Color,
//       dialogBackgroundColor: K_LIGHT_THEME_CARDS_COLOR,
//       cardColor: K_LIGHT_THEME_CARDS_COLOR,
//       hintColor: themeObject.lightThemeSubTitelsColor,
//       highlightColor: themeObject.lightThemePrimeryColor!.withOpacity(0.2),
//       splashColor: themeObject.lightThemePrimeryColor!.withOpacity(0.2),
//       disabledColor: K_LIGHT_THEME_FILLS_COLOR,
//       iconTheme: IconThemeData(color: themeObject.lightThemePrimeryColor),
//       iconButtonTheme: IconButtonThemeData(
//         style: ButtonStyle(
//           foregroundColor: MaterialStateProperty.all(
//             themeObject.lightThemePrimeryColor,
//           ),
//         ),
//       ),
//       primaryIconTheme: IconThemeData(
//         color: themeObject.lightThemePrimeryColor,
//       ),
//       //@@@@@ text Theme @@@@@//
//       textTheme: getTextTheme(
//         themeObject: themeObject,
//         isLightMode: true,
//       ),
//       //@@@@@ color Scheme @@@@@//
//       colorScheme: ColorScheme.light().copyWith(
//         primary: themeObject.lightThemePrimeryColor,
//         secondary: themeObject.lightThemePrimeryColor,
//         error: K_LIGHT_THEME_RED_COLOR,
//         background: K_LIGHT_THEME_BG_COLOR,
//         brightness: Brightness.light,
//       ),
//       //@@@@@ nav bar @@@@@//
//       appBarTheme: AppBarTheme(
//         // color: K_LIGHT_THEME_NAV_BAR_COLOR,
//         backgroundColor: themeObject.lightThemeNavBarColor,
//         centerTitle: true,
//         elevation: 0.5,
//         shadowColor: themeObject.lightThemeSubTitelsColor?.withOpacity(0.2),
//         actionsIconTheme:
//             IconThemeData(color: themeObject.lightThemePrimeryColor),
//         iconTheme: IconThemeData(color: themeObject.lightThemePrimeryColor),
//         titleTextStyle: getAppBarTextStyle(
//           themeObject: themeObject,
//           isLightMode: true,
//         ),
//         surfaceTintColor: themeObject.lightThemeNavBarColor,
//         systemOverlayStyle: SystemUiOverlayStyle.light,
//       ),
//       //@@@@@ tab bar @@@@@//
//       tabBarTheme: getTabBarTheme(themeObject: themeObject),
//       //@@@@@ floating Action @@@@@//
//       floatingActionButtonTheme: FloatingActionButtonThemeData(
//         backgroundColor: themeObject.lightThemePrimeryColor,
//         // splashColor: Colors.white.withAlpha(100),
//         // highlightElevation: 8,
//         // elevation: 4,
//         // focusColor: Color(0xff3d63ff),
//         // hoverColor: Color(0xff3d63ff),
//         foregroundColor: Colors.white,
//       ),
//       //@@@@@     @@@@@//
//       dividerColor: themeObject.lightThemeSubTitelsColor?.withOpacity(0.2),
//       dividerTheme: DividerThemeData(
//           color: themeObject.lightThemeSubTitelsColor?.withOpacity(0.2)),
//       //@@@@@ tab bar @@@@@//
//       bottomNavigationBarTheme: BottomNavigationBarThemeData(
//         backgroundColor: themeObject.lightThemeTabBarColor,
//         selectedItemColor: themeObject.lightThemePrimeryColor,
//         unselectedItemColor: themeObject.lightThemeSubTitelsColor,
//         selectedIconTheme:
//             IconThemeData(color: themeObject.lightThemePrimeryColor),
//         showUnselectedLabels: true,
//       ),
//       //@@@@@ others @@@@@//
//       chipTheme: ChipThemeData(
//           backgroundColor:
//               themeObject.lightThemeSubTitelsColor?.withOpacity(0.2),
//           side: BorderSide(
//             color: themeObject.lightThemeSubTitelsColor!.withOpacity(0.2),
//           )),
//       //@@@@@ others @@@@@//
//       inputDecorationTheme: InputDecorationTheme(
//         fillColor: themeObject.lightThemeSubTitelsColor!.withOpacity(0.1),
//         prefixIconColor: themeObject.lightThemeSubTitelsColor?.withOpacity(1),
//         suffixIconColor: themeObject.lightThemeSubTitelsColor?.withOpacity(1),
//       ),
//       //@@@@@ others @@@@@//
//     );
//   }

//   //=======================================//
//   //=======================================// dark theme
//   //=======================================// dark theme
//   //=======================================//

//   static ThemeData darkThemeData({
//     required ThemeObject themeObject,
//   }) {
//     return ThemeData.dark().copyWith(
//       //
//       extensions: <ThemeExtension<dynamic>>[
//         KH_Colors.dark,
//       ],
//       //
//       brightness: Brightness.dark,
//       primaryColor: themeObject.darkThemePrimeryColor,
//       canvasColor: Colors.transparent,
//       scaffoldBackgroundColor: themeObject.darkThemeBGColor,
//       secondaryHeaderColor: themeObject.darkThemeBG2Color,
//       dialogBackgroundColor: K_DARK_THEME_CARDS_COLOR,
//       cardColor: K_DARK_THEME_CARDS_COLOR,
//       hintColor: themeObject.darkThemeSubTitelsColor,
//       highlightColor: themeObject.darkThemePrimeryColor!.withOpacity(0.2),
//       splashColor: themeObject.darkThemePrimeryColor!.withOpacity(0.2),
//       disabledColor: K_DARK_THEME_FILLS_COLOR,
//       iconTheme: IconThemeData(
//         color: themeObject.darkThemePrimeryColor,
//       ),
//       iconButtonTheme: IconButtonThemeData(
//         style: ButtonStyle(
//           foregroundColor: MaterialStateProperty.all(
//             themeObject.darkThemePrimeryColor,
//           ),
//         ),
//       ),
//       //@@@@@ text Theme @@@@@//
//       textTheme: getTextTheme(
//         themeObject: themeObject,
//         isLightMode: false,
//       ),
//       //@@@@@ color Scheme @@@@@//
//       colorScheme: ColorScheme.light().copyWith(
//         primary: themeObject.darkThemePrimeryColor,
//         secondary: themeObject.darkThemePrimeryColor,
//         error: K_DARK_THEME_RED_COLOR,
//         background: K_DARK_THEME_BG_COLOR,
//         brightness: Brightness.dark,
//       ),
//       //@@@@@ nav bar @@@@@//
//       appBarTheme: AppBarTheme(
//         // color: K_DARK_THEME_NAV_BAR_COLOR,
//         backgroundColor:
//             themeObject.darkThemeNavBarColor, // K_DARK_THEME_NAV_BAR_COLOR,
//         centerTitle: true,
//         elevation: 0.5,
//         shadowColor: themeObject.darkThemeSubTitelsColor?.withOpacity(0.2),
//         actionsIconTheme: IconThemeData(
//           color: themeObject.darkThemePrimeryColor,
//         ),
//         iconTheme: IconThemeData(
//           color: themeObject.darkThemePrimeryColor,
//         ),
//         // textTheme: darkAppBarTextTheme,
//         titleTextStyle: getAppBarTextStyle(
//           themeObject: themeObject,
//           isLightMode: false,
//         ),
//         surfaceTintColor: themeObject.darkThemeNavBarColor,
//         systemOverlayStyle: SystemUiOverlayStyle.dark,
//       ),
//       //@@@@@ tab bar @@@@@//
//       tabBarTheme: getTabBarTheme(themeObject: themeObject),
//       //@@@@@ floating Action @@@@@//
//       floatingActionButtonTheme: FloatingActionButtonThemeData(
//         backgroundColor: themeObject.darkThemePrimeryColor,
//         // splashColor: Colors.white.withAlpha(100),
//         // highlightElevation: 8,
//         // elevation: 4,
//         // focusColor: Color(0xff3d63ff),
//         // hoverColor: Color(0xff3d63ff),
//         foregroundColor: Colors.white,
//         // splashColor: themeObject.darkThemeTitelsColor?.withOpacity(0.5),
//       ),
//       //@@@@@     @@@@@//
//       dividerColor: themeObject.darkThemeSubTitelsColor?.withOpacity(0.2),
//       dividerTheme: DividerThemeData(
//           color: themeObject.darkThemeSubTitelsColor?.withOpacity(
//         0.2,
//       )),
//       //@@@@@ tab bar @@@@@//
//       bottomNavigationBarTheme: BottomNavigationBarThemeData(
//         backgroundColor:
//             themeObject.darkThemeTabBarColor, // K_DARK_THEME_TAB_BAR_COLOR,
//         selectedItemColor: themeObject.darkThemePrimeryColor,
//         unselectedItemColor: themeObject
//             .darkThemeSubTitelsColor, // K_DARK_THEME_SUB_TITELS_COLOR,
//         selectedIconTheme:
//             IconThemeData(color: themeObject.darkThemePrimeryColor),
//         showUnselectedLabels: true,
//       ),
//       //@@@@@ others @@@@@//
//       chipTheme: ChipThemeData(
//           backgroundColor:
//               themeObject.darkThemeSubTitelsColor?.withOpacity(0.2),
//           side: BorderSide(
//             color: themeObject.darkThemeSubTitelsColor!.withOpacity(0.2),
//           )),
//       //@@@@@ others @@@@@//
//       inputDecorationTheme: InputDecorationTheme(
//         fillColor: themeObject.darkThemeSubTitelsColor!.withOpacity(0.1),
//         prefixIconColor: themeObject.darkThemeSubTitelsColor?.withOpacity(1),
//         suffixIconColor: themeObject.darkThemeSubTitelsColor?.withOpacity(1),
//       ),
//       //@@@@@ others @@@@@//
//     );
//   }

//   //=======================================//
//   //=======================================// light theme
//   //=======================================// light theme
//   //=======================================//

// /* 
//   static ThemeData lightThemeData({
//     required ThemeObject themeObject,
//   }) {
//     return ThemeData.light().copyWith(
//       //
//       extensions: <ThemeExtension<dynamic>>[
//         KH_Colors.light,
//       ],
//       //
//       brightness: Brightness.light,
//       primaryColor: themeObject.lightThemePrimeryColor,
//       canvasColor: Colors.transparent,
//       scaffoldBackgroundColor: themeObject.lightThemeBGColor,
//       secondaryHeaderColor: themeObject.lightThemeBG2Color,
//       dialogBackgroundColor: K_LIGHT_THEME_CARDS_COLOR,
//       cardColor: K_LIGHT_THEME_CARDS_COLOR,
//       hintColor: themeObject.lightThemeSubTitelsColor,
//       highlightColor: themeObject.lightThemePrimeryColor!.withOpacity(0.2),
//       splashColor: themeObject.lightThemePrimeryColor!.withOpacity(0.2),
//       disabledColor: K_LIGHT_THEME_FILLS_COLOR,
//       iconTheme: IconThemeData(color: themeObject.lightThemePrimeryColor),
//       //@@@@@ text Theme @@@@@//
//       textTheme: getTextTheme(
//         themeObject: themeObject,
//         isLightMode: true,
//       ),
//       //@@@@@ color Scheme @@@@@//
//       colorScheme: ColorScheme.light().copyWith(
//         primary: themeObject.lightThemePrimeryColor,
//         secondary: themeObject.lightThemePrimeryColor,
//         error: K_LIGHT_THEME_RED_COLOR,
//         background: K_LIGHT_THEME_BG_COLOR,
//         brightness: Brightness.light,
//       ),
//       //@@@@@ nav bar @@@@@//
//       appBarTheme: AppBarTheme(
//         // color: K_LIGHT_THEME_NAV_BAR_COLOR,
//         backgroundColor: themeObject.lightThemeNavBarColor,
//         centerTitle: true,
//         elevation: 0.5,
//         actionsIconTheme:
//             IconThemeData(color: themeObject.lightThemePrimeryColor),
//         iconTheme: IconThemeData(color: themeObject.lightThemePrimeryColor),
//         titleTextStyle: getAppBarTextStyle(
//           themeObject: themeObject,
//           isLightMode: true,
//         ),
//       ),
//       //@@@@@ tab bar @@@@@//
//       tabBarTheme: getTabBarTheme(themeObject: themeObject),
//       //@@@@@ floating Action @@@@@//
//       floatingActionButtonTheme: FloatingActionButtonThemeData(
//         backgroundColor: themeObject.lightThemePrimeryColor,
//         // splashColor: Colors.white.withAlpha(100),
//         // highlightElevation: 8,
//         // elevation: 4,
//         // focusColor: Color(0xff3d63ff),
//         // hoverColor: Color(0xff3d63ff),
//         foregroundColor: Colors.white,
//       ),
//       //@@@@@ tab bar @@@@@//
//       bottomNavigationBarTheme: BottomNavigationBarThemeData(
//         backgroundColor: themeObject.lightThemeTabBarColor,
//         selectedItemColor: themeObject.lightThemePrimeryColor,
//         unselectedItemColor: themeObject.lightThemeSubTitelsColor,
//         selectedIconTheme:
//             IconThemeData(color: themeObject.lightThemePrimeryColor),
//         showUnselectedLabels: true,
//       ),
//       //@@@@@ others @@@@@//
//       // inputDecorationTheme: InputDecorationTheme(),
//     );
//   }

//   //=======================================//
//   //=======================================// dark theme
//   //=======================================// dark theme
//   //=======================================//

//   static ThemeData darkThemeData({
//     required ThemeObject themeObject,
//   }) {
//     return ThemeData.dark().copyWith(
//       //
//       extensions: <ThemeExtension<dynamic>>[
//         KH_Colors.dark,
//       ],
//       //
//       brightness: Brightness.dark,
//       primaryColor: themeObject.darkThemePrimeryColor,
//       canvasColor: Colors.transparent,
//       scaffoldBackgroundColor: themeObject.darkThemeBGColor,
//       secondaryHeaderColor: themeObject.darkThemeBG2Color,
//       dialogBackgroundColor: K_DARK_THEME_CARDS_COLOR,
//       cardColor: K_DARK_THEME_CARDS_COLOR,
//       hintColor: themeObject.darkThemeSubTitelsColor,
//       highlightColor: themeObject.darkThemePrimeryColor!.withOpacity(0.2),
//       splashColor: themeObject.darkThemePrimeryColor!.withOpacity(0.2),
//       disabledColor: K_DARK_THEME_FILLS_COLOR,
//       iconTheme: IconThemeData(
//         color: themeObject.darkThemePrimeryColor,
//       ),
//       //@@@@@ text Theme @@@@@//
//       textTheme: getTextTheme(
//         themeObject: themeObject,
//         isLightMode: false,
//       ),
//       //@@@@@ color Scheme @@@@@//
//       colorScheme: ColorScheme.light().copyWith(
//         primary: themeObject.darkThemePrimeryColor,
//         secondary: themeObject.darkThemePrimeryColor,
//         error: K_DARK_THEME_RED_COLOR,
//         background: K_DARK_THEME_BG_COLOR,
//         brightness: Brightness.dark,
//       ),
//       //@@@@@ nav bar @@@@@//
//       appBarTheme: AppBarTheme(
//         // color: K_DARK_THEME_NAV_BAR_COLOR,
//         backgroundColor:
//             themeObject.darkThemeNavBarColor, // K_DARK_THEME_NAV_BAR_COLOR,
//         centerTitle: true,
//         elevation: 0.5,
//         actionsIconTheme: IconThemeData(
//           color: themeObject.darkThemePrimeryColor,
//         ),
//         iconTheme: IconThemeData(
//           color: themeObject.darkThemePrimeryColor,
//         ),
//         // textTheme: darkAppBarTextTheme,
//         titleTextStyle: getAppBarTextStyle(
//           themeObject: themeObject,
//           isLightMode: false,
//         ),
//       ),
//       //@@@@@ tab bar @@@@@//
//       tabBarTheme: getTabBarTheme(themeObject: themeObject),
//       //@@@@@ floating Action @@@@@//
//       floatingActionButtonTheme: FloatingActionButtonThemeData(
//         backgroundColor: themeObject.darkThemePrimeryColor,
//         // splashColor: Colors.white.withAlpha(100),
//         // highlightElevation: 8,
//         // elevation: 4,
//         // focusColor: Color(0xff3d63ff),
//         // hoverColor: Color(0xff3d63ff),
//         foregroundColor: Colors.white,
//         // splashColor: themeObject.darkThemeTitelsColor?.withOpacity(0.5),
//       ),
//       //@@@@@ tab bar @@@@@//
//       bottomNavigationBarTheme: BottomNavigationBarThemeData(
//         backgroundColor:
//             themeObject.darkThemeTabBarColor, // K_DARK_THEME_TAB_BAR_COLOR,
//         selectedItemColor: themeObject.darkThemePrimeryColor,
//         unselectedItemColor: themeObject
//             .darkThemeSubTitelsColor, // K_DARK_THEME_SUB_TITELS_COLOR,
//         selectedIconTheme:
//             IconThemeData(color: themeObject.darkThemePrimeryColor),
//         showUnselectedLabels: true,
//       ),
//       //@@@@@ others @@@@@//
//       // inputDecorationTheme: InputDecorationTheme(),
//     );
//   }


//  */

//   //=======================================//
//   //=======================================// getTextStyle
//   //=======================================// getTextStyle
//   //=======================================//

//   static TextStyle getThemeTextStyle({
//     required ThemeObject themeObject,
//     required bool isLightMode,
//     double? fontSizee,
//     FontWeight? fontWeight,
//     Color? textColor,
//   }) {
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@// CIRO
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     if (themeObject.fontType == FontTypeEnum.CiroFont) {
//       return GoogleFonts.cairo(
//         textStyle: TextStyle(
//           fontSize: fontSizee,
//           fontWeight: fontWeight,
//           color: (textColor != null)
//               ? textColor
//               : isLightMode
//                   ? themeObject.lightThemeTitelsColor
//                   : themeObject.darkThemeTitelsColor,
//         ),
//       );
//     }
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@// NTO
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     else if (themeObject.fontType == FontTypeEnum.NotoSans) {
//       return GoogleFonts.notoSans(
//         textStyle: TextStyle(
//           fontSize: fontSizee,
//           fontWeight: fontWeight,
//           color: (textColor != null)
//               ? textColor
//               : isLightMode
//                   ? themeObject.lightThemeTitelsColor
//                   : themeObject.darkThemeTitelsColor,
//         ),
//       );
//     }
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@// DUBAI
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     else if (themeObject.fontType == FontTypeEnum.DubaiFont) {
//       return TextStyle(
//         fontFamily: K_FONT_FAMILY_DUBAI,
//         fontSize: fontSizee,
//         fontWeight: fontWeight,
//         color: (textColor != null)
//             ? textColor
//             : isLightMode
//                 ? themeObject.lightThemeTitelsColor
//                 : themeObject.darkThemeTitelsColor,
//       );
//     }
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@// SF APPLE
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     else if (themeObject.fontType == FontTypeEnum.SF_Pro_Font) {
//       return TextStyle(
//         fontFamily: K_FONT_FAMILY_SF_ARABIC,
//         fontSize: fontSizee,
//         fontWeight: fontWeight,
//         color: (textColor != null)
//             ? textColor
//             : isLightMode
//                 ? themeObject.lightThemeTitelsColor
//                 : themeObject.darkThemeTitelsColor,
//       );
//     }

//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@// AL MARAI
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     else if (themeObject.fontType == FontTypeEnum.AlmaraiFont) {
//       return TextStyle(
//         fontFamily: K_FONT_FAMILY_SF_ALMARAI,
//         fontSize: fontSizee,
//         fontWeight: fontWeight,
//         color: (textColor != null)
//             ? textColor
//             : isLightMode
//                 ? themeObject.lightThemeTitelsColor
//                 : themeObject.darkThemeTitelsColor,
//       );
//     }
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@// ELSE
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     else {
//       return TextStyle(
//         fontSize: fontSizee,
//         fontWeight: fontWeight,
//         color: (textColor != null)
//             ? textColor
//             : isLightMode
//                 ? themeObject.lightThemeTitelsColor
//                 : themeObject.darkThemeTitelsColor,
//       );
//     }
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//   }

//   //=======================================//
//   //=======================================//  Text Themes
//   //=======================================//  Text Themes
//   //=======================================//

//   static TextTheme getTextTheme({
//     required ThemeObject themeObject,
//     required bool isLightMode,
//   }) {
//     return TextTheme(
//       //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//       //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@// DISPLAY
//       //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//       // displayLarge: getThemeTextStyle(
//       //   themeObject: themeObject,
//       //   isLightMode: isLightMode,
//       //   // fontSizee: 20,
//       // ),
//       // displayMedium: getThemeTextStyle(
//       //   themeObject: themeObject,
//       //   isLightMode: isLightMode,
//       //   // fontSizee: 20,
//       // ),
//       // displaySmall: getThemeTextStyle(
//       //   themeObject: themeObject,
//       //   isLightMode: isLightMode,
//       //   // fontSizee: 20,
//       // ),
//       //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//       //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@// HEADLINE
//       //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//       // headlineLarge: getThemeTextStyle(
//       //   themeObject: themeObject,
//       //   isLightMode: isLightMode,
//       //   // fontSizee: 20,
//       // ),
//       // headlineMedium: getThemeTextStyle(
//       //   themeObject: themeObject,
//       //   isLightMode: isLightMode,
//       //   // fontSizee: 18,
//       // ),
//       // headlineSmall: getThemeTextStyle(
//       //   themeObject: themeObject,
//       //   isLightMode: isLightMode,
//       //   // fontSizee: 16,
//       // ),
//       //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//       //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@// TITLE
//       //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//       titleLarge: getThemeTextStyle(
//         themeObject: themeObject,
//         isLightMode: isLightMode,
//         fontSizee: 20,
//         fontWeight: FontWeight.bold,
//       ),
//       titleMedium: getThemeTextStyle(
//         themeObject: themeObject,
//         isLightMode: isLightMode,
//         fontSizee: 18,
//         fontWeight: FontWeight.bold,
//       ),
//       titleSmall: getThemeTextStyle(
//         themeObject: themeObject,
//         isLightMode: isLightMode,
//         fontSizee: 16,
//         fontWeight: FontWeight.bold,
//       ),
//       //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//       //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@// BODY
//       //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//       bodyLarge: getThemeTextStyle(
//         themeObject: themeObject,
//         isLightMode: isLightMode,
//         fontSizee: 18,
//         fontWeight: FontWeight.normal,
//       ),
//       bodyMedium: getThemeTextStyle(
//         themeObject: themeObject,
//         isLightMode: isLightMode,
//         fontSizee: 16,
//         fontWeight: FontWeight.normal,
//       ),
//       bodySmall: getThemeTextStyle(
//         themeObject: themeObject,
//         isLightMode: isLightMode,
//         fontSizee: 14,
//         fontWeight: FontWeight.normal,
//       ),
//       //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//       //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@// LABLE
//       //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//       labelLarge: getThemeTextStyle(
//         themeObject: themeObject,
//         isLightMode: isLightMode,
//         fontSizee: 14,
//         fontWeight: FontWeight.normal,
//         textColor: isLightMode
//             ? themeObject.lightThemeSubTitelsColor
//             : themeObject.darkThemeSubTitelsColor,
//       ),
//       labelMedium: getThemeTextStyle(
//         themeObject: themeObject,
//         isLightMode: isLightMode,
//         fontSizee: 12,
//         fontWeight: FontWeight.normal,
//         textColor: isLightMode
//             ? themeObject.lightThemeSubTitelsColor
//             : themeObject.darkThemeSubTitelsColor,
//       ),
//       labelSmall: getThemeTextStyle(
//         themeObject: themeObject,
//         isLightMode: isLightMode,
//         fontSizee: 10,
//         fontWeight: FontWeight.normal,
//         textColor: isLightMode
//             ? themeObject.lightThemeSubTitelsColor
//             : themeObject.darkThemeSubTitelsColor,
//       ),
//       //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//       //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//       //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     );
//   }

//   //=======================================//
//   //=======================================// app bar text style
//   //=======================================// app bar text style
//   //=======================================//

//   static TextStyle getAppBarTextStyle({
//     required ThemeObject themeObject,
//     required bool isLightMode,
//   }) {
//     return getThemeTextStyle(
//       themeObject: themeObject,
//       isLightMode: isLightMode,
//       fontSizee: 18,
//       fontWeight: FontWeight.bold,
//       textColor: themeObject.lightThemeNavBarTextColor,
//     );
//   }

//   //=======================================//
//   //=======================================// tab bar text theme
//   //=======================================// tab bar text theme
//   //=======================================//

//   static TabBarTheme getTabBarTheme({
//     required ThemeObject themeObject,
//   }) {
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     if (themeObject.fontType == FontTypeEnum.CiroFont) {
//       return TabBarTheme(
//         labelStyle: GoogleFonts.cairo(
//           fontSize: 12,
//           fontWeight: FontWeight.bold,
//         ),
//         unselectedLabelStyle: GoogleFonts.cairo(
//           fontSize: 12,
//           fontWeight: FontWeight.bold,
//         ),
//       );
//     }
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     else if (themeObject.fontType == FontTypeEnum.NotoSans) {
//       return TabBarTheme(
//         labelStyle: GoogleFonts.notoSans(
//           fontSize: 12,
//           fontWeight: FontWeight.bold,
//         ),
//         unselectedLabelStyle: GoogleFonts.notoSans(
//           fontSize: 12,
//           fontWeight: FontWeight.bold,
//         ),
//       );
//     }
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     else if (themeObject.fontType == FontTypeEnum.DubaiFont) {
//       return TabBarTheme(
//         labelStyle: TextStyle(
//           fontFamily: K_FONT_FAMILY_DUBAI,
//           fontSize: 12,
//           fontWeight: FontWeight.bold,
//         ),
//         unselectedLabelStyle: TextStyle(
//           fontFamily: K_FONT_FAMILY_DUBAI,
//           fontSize: 12,
//           fontWeight: FontWeight.bold,
//         ),
//       );
//     }
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     else if (themeObject.fontType == FontTypeEnum.SF_Pro_Font) {
//       return TabBarTheme(
//         labelStyle: TextStyle(
//           fontFamily: K_FONT_FAMILY_SF_ARABIC,
//           fontSize: 12,
//           fontWeight: FontWeight.bold,
//         ),
//         unselectedLabelStyle: TextStyle(
//           fontFamily: K_FONT_FAMILY_SF_ARABIC,
//           fontSize: 12,
//           fontWeight: FontWeight.bold,
//         ),
//       );
//     }
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     else if (themeObject.fontType == FontTypeEnum.AlmaraiFont) {
//       return TabBarTheme(
//         labelStyle: TextStyle(
//           fontFamily: K_FONT_FAMILY_SF_ALMARAI,
//           fontSize: 12,
//           fontWeight: FontWeight.bold,
//         ),
//         unselectedLabelStyle: TextStyle(
//           fontFamily: K_FONT_FAMILY_SF_ALMARAI,
//           fontSize: 12,
//           fontWeight: FontWeight.bold,
//         ),
//       );
//     }
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     else {
//       return TabBarTheme(
//         labelStyle: TextStyle(
//           fontSize: 12,
//           fontWeight: FontWeight.bold,
//         ),
//         unselectedLabelStyle: TextStyle(
//           fontSize: 12,
//           fontWeight: FontWeight.bold,
//         ),
//       );
//     }
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//     //@@@@@//@@@@@//@@@@@//@@@@@//@@@@@//
//   }

//   //=======================================//
//   //=======================================// tab bar text theme
//   //=======================================// tab bar text theme
//   //=======================================//
// }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
