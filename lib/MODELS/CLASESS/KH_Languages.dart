// ignore_for_file: camel_case_types

import 'dart:io';
import 'package:flutter/foundation.dart';

import 'package:intl/intl.dart';
import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled12/MODELS/CLASESS/KH_Helper.dart';
import 'package:untitled12/MODELS/CLASESS/KH_Responsivness.dart';

//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//
class LanguageObject {
  final String languageName;
  final String languageFlag;
  final String languageCode;
  final String countryCode;
  final String languageID;
  LanguageObject({
    required this.languageName,
    required this.languageFlag,
    required this.languageCode,
    required this.countryCode,
    required this.languageID,
  });
}
//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//

const K_LOCAL_CODE_KEY = "LocalCodeKey";

class LanguageProvider extends ChangeNotifier {
  //@@@@@@@@@@@@@@ The Original list of provided data
  //@@@@@@@@@@@@@@ The Original list of provided data
  //@@@@@@@@@@@@@@ The Original list of provided data

  List<LanguageObject> _providedLanguages = [
    LanguageObject(
      languageName: "العربية",
      languageFlag: "🇸🇦",
      languageCode: "ar",
      countryCode: "SA",
      languageID: "1",
    ),
    LanguageObject(
      languageName: "English",
      languageFlag: "🇬🇧",
      languageCode: "en",
      countryCode: "US",
      languageID: "2",
    ),
    LanguageObject(
      languageName: "Türkçe",
      languageFlag: "🇹🇷",
      languageCode: "tr",
      countryCode: "TR",
      languageID: "3",
    ),
  ];

  //@@@@@@@@@@@@@@ The Copy list of provided data
  //@@@@@@@@@@@@@@ The Copy list of provided data
  //@@@@@@@@@@@@@@ The Copy list of provided data

  UnmodifiableListView<LanguageObject> get getCopyOfProvidedLanguages {
    return UnmodifiableListView(_providedLanguages);
  }

  //@@@@@@@@@@@@@@ Locale information
  //@@@@@@@@@@@@@@ Locale information
  //@@@@@@@@@@@@@@ Locale information

  // final String defaultLocale = Platform.localeName;
  // Locale _sellectedlocale = Locale(Intl.getCurrentLocale());
  // Locale _sellectedlocale = Locale(Platform.localeName);
  Locale _sellectedlocale = KH_Responsivenes.isWeb()
      ? Locale(Intl.getCurrentLocale())
      : KH_Responsivenes.isMac()
          ? Locale(Intl.getCurrentLocale())
          : Locale(Platform.localeName);
  Locale get getSellectedProvidedlocale => _sellectedlocale;

  //=======================================//
  //=======================================//
  // Automaticly called when creating provider instance making sure that we check shared preference for value

  LanguageProvider() {
    init();
  }
  init() async {
    // _sellectedlocale = KH_Responsivenes.isWeb()
    //   ? Locale(Intl.getCurrentLocale())
    //   : Locale(Platform.localeName);

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? localCode = sharedPreferences.getString(K_LOCAL_CODE_KEY);
    if (localCode != null) {
      _sellectedlocale = Locale(localCode);
      KH_Helper.safePrint("              ");
      KH_Helper.safePrint("@@@@@@@@@@@@@@");
      KH_Helper.safePrint("              ");
      KH_Helper.safePrint("user chose language and saved it : $localCode");
      KH_Helper.safePrint("              ");
      KH_Helper.safePrint("@@@@@@@@@@@@@@");
      KH_Helper.safePrint("              ");
    } else {
      // final String defaultLocale = Platform.localeName;
      String defaultLocale = Intl.getCurrentLocale();
      if (KH_Responsivenes.isWeb() || KH_Responsivenes.isMac()) {
        defaultLocale = Intl.getCurrentLocale();
      } else {
        defaultLocale = Platform.localeName;
      }
      if (defaultLocale.contains("ar")) {
        _sellectedlocale = Locale("ar");
      } else if (defaultLocale.contains("tr")) {
        _sellectedlocale = Locale("tr");
      } else {
        _sellectedlocale = Locale("en");
      }
      KH_Helper.safePrint("              ");
      KH_Helper.safePrint("@@@@@@@@@@@@@@");
      KH_Helper.safePrint("              ");
      KH_Helper.safePrint(
          "user did not chose language at all , will return device locale : ${_sellectedlocale.languageCode}");
      KH_Helper.safePrint("              ");
      KH_Helper.safePrint("@@@@@@@@@@@@@@");
      KH_Helper.safePrint("              ");
      // _sellectedlocale = Locale(Intl.getCurrentLocale());
      // _sellectedlocale = Locale(Platform.localeName);
    }
    notifyListeners();
  }

  //=======================================//
  //=======================================//
  // use when set new language

  Future<void> setSellectedLocale({required String newLocaleCode}) async {
    //@@@@@//
    _sellectedlocale = Locale(newLocaleCode);
    notifyListeners();
    //@@@@@//
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(K_LOCAL_CODE_KEY, newLocaleCode);
    KH_Helper.safePrint("#########################");
    KH_Helper.safePrint("#########################");
    KH_Helper.safePrint("SAVED LANGUAGE DATA TO SHARED PREFERENCE");
    KH_Helper.safePrint("language code is : $newLocaleCode");
    KH_Helper.safePrint("#########################");
    KH_Helper.safePrint("#########################");
    //@@@@@//
  }
}

//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//

enum LanguagesEnum {
  Arabic,
  English,
  Turkish,
}

extension LanguagesEnumString on LanguagesEnum {
  String get rawValue => describeEnum(this);
}

class KH_Languages {
//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@// IS ENGLISH LANGUAGE
//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//
  static bool isEnglishLanguageFromProvider({required BuildContext context}) {
    final languagesProvider = Provider.of<LanguageProvider>(context);
    if (languagesProvider.getSellectedProvidedlocale.languageCode
        .contains("ar")) {
      return false;
    } else {
      return true;
    }
  }

//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@// HEADER LANGUGE CODE
//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//
  static String getHeaderLanguageCodeFromProvider(
      {required BuildContext context}) {
    final languagesProvider = Provider.of<LanguageProvider>(context);
    if (languagesProvider.getSellectedProvidedlocale.languageCode
        .contains("en")) {
      return "en";
    } else if (languagesProvider.getSellectedProvidedlocale.languageCode
        .contains("tr")) {
      return "tr";
    } else if (languagesProvider.getSellectedProvidedlocale.languageCode
        .contains("ar")) {
      return "ar";
    } else {
      return "ar";
    }
  }

//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@// IS ENGLISH LANGUAGE
//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//
  static Future<bool> isEnglishLanguage() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? localCode = sharedPreferences.getString(K_LOCAL_CODE_KEY);
    if (localCode != null) {
      if (localCode.contains("ar")) {
        return false;
      } else {
        return true;
      }
    } else {
      final localname = Intl.getCurrentLocale();
      if (localname.contains("ar")) {
        return false;
      } else {
        return true;
      }
    }
  }

//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@// HEADER LANGUGE CODE
//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//
  static Future<String> getHeaderLanguageCode() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? localCode = sharedPreferences.getString(K_LOCAL_CODE_KEY);
    if (localCode != null) {
      if (localCode.contains("en")) {
        return "en";
      } else if (localCode.contains("tr")) {
        return "tr";
      } else if (localCode.contains("ar")) {
        return "ar";
      } else {
        return "ar";
      }
    } else {
      final localname = Intl.getCurrentLocale();
      if (localname.contains("en")) {
        return "en";
      } else if (localname.contains("tr")) {
        return "tr";
      } else if (localname.contains("ar")) {
        return "ar";
      } else {
        return "ar";
      }
    }
  }
//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//
}
