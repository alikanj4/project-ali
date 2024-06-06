import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled12/MODELS/CLASESS/KH_Helper.dart';
import 'package:untitled12/MODELS/CLASESS/KH_Languages.dart';
import 'package:untitled12/MODELS/CLASESS/KH_Themes.dart';
import 'package:untitled12/SECREEN/App/HOME%20TAP/TapBarController.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _StateMyApp();
}

class _StateMyApp extends State<MyApp> {
  //@@@@@@@@@@@//@@@@@@@@@@@//@@@@@@@@@@@//@@@@@@@@@@@//
  //@@@@@@@@@@@//@@@@@@@@@@@//@@@@@@@@@@@//@@@@@@@@@@@//
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          //@@@@@@@@@@@//@@@@@@@@@@@//
          //@@@@@@@@@@@//@@@@@@@@@@@//
          ChangeNotifierProvider(
            create: (context) => ThemesProvider(),
          ),
          //@@@@@@@@@@@//@@@@@@@@@@@//
          //@@@@@@@@@@@//@@@@@@@@@@@//
          ChangeNotifierProvider(
            create: (context) => LanguageProvider(),
          ),
          //@@@@@@@@@@@//@@@@@@@@@@@//
          //@@@@@@@@@@@//@@@@@@@@@@@//

          //@@@@@@@@@@@//@@@@@@@@@@@//
          //@@@@@@@@@@@//@@@@@@@@@@@//
        ],
        builder: (context, child) {
          final themesProvider = Provider.of<ThemesProvider>(context);
          KH_Helper.safePrint(
              "عند بدء التطبيق الثيم المختار هو : ${themesProvider.getSellectedTheme.toString()}");

          final languagesProvider = Provider.of<LanguageProvider>(context);
          KH_Helper.safePrint(
              " عند بدء التطبيق اللغة المختارة هي : ${languagesProvider.getSellectedProvidedlocale.toString()} ");

          //@@@@@@@@@@@//@@@@@@@@@@@//
          //@@@@@@@@@@@//@@@@@@@@@@@//
          return MaterialApp(
            // SETTINGS
            title: "KÖY SELLER",
            debugShowCheckedModeBanner: false,
            scrollBehavior: MyCustomScrollBehavior(),

            // LOCALAIZATION
            // localizationsDelegates: [
            //   // 1
            //   S.delegate,
            //   // 2
            //   GlobalMaterialLocalizations.delegate,
            //   GlobalWidgetsLocalizations.delegate,
            //   GlobalCupertinoLocalizations.delegate,
            // ],
            // supportedLocales: S.delegate.supportedLocales,
            // locale: languagesProvider.getSellectedProvidedlocale,

            // THEMES
            // theme: KH_THEME.lightThemeData(),
            // darkTheme: KH_THEME.darkThemeData(),

            themeMode: themesProvider.getSellectedTheme,
            theme: KH_THEME.getSellectedTheme(
              themeMode: themesProvider.getSellectedTheme,
              themeObject: themesProvider.getThemeObject,
            ),

            // ROUTES
            // initialRoute: SplachScreen.routName,
            // routes: dozoStoreAppRoutes,

            home: TabBarController(),

            // TEXT SCALE
            builder: (context, child) {
              return MediaQuery(
                child: child ?? Container(),
                data: MediaQuery.of(context)
                    .copyWith(textScaler: TextScaler.linear(1.0)),
              );
            },
          );
        });
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad,
        PointerDeviceKind.stylus,
        PointerDeviceKind.unknown,
        PointerDeviceKind.invertedStylus,
      };
}



//   @override
//   Widget build(BuildContext context) {
//     final themesProvider = Provider.of<ThemesProvider>(context);
//     KH_Helper.safePrint(
//         "عند بدء التطبيق الثيم المختار هو : ${themesProvider.getSellectedTheme.toString()}");

//     return MaterialApp(
//       home: HomePage(),
//       debugShowCheckedModeBanner: false,
//       themeMode: themesProvider.getSellectedTheme,
//       theme: KH_THEME.getSellectedTheme(
//         themeMode: themesProvider.getSellectedTheme,
//         themeObject: themesProvider.getThemeObject,
//       ),
//     );
//   }
// }
