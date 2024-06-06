import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io' show Platform;

// ignore: camel_case_types
class KH_Responsivenes extends StatelessWidget {
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const KH_Responsivenes({
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 500;

  static bool isMobileLandScaping(BuildContext context) =>
      MediaQuery.of(context).size.height < 600;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1150 &&
      MediaQuery.of(context).size.width >= 500;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1150;

  // static bool isDesktop(BuildContext context) =>
  //     MediaQuery.of(context).size.width < 1300 &&
  //     MediaQuery.of(context).size.width >= 1100;

  static bool isLargDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1500;

  static bool isXLargDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1750;

  // ======= //
  static bool isLandScape(BuildContext context) =>
      MediaQuery.of(context).orientation == Orientation.landscape;
  // ======= //
  static bool isWeb() => kIsWeb;
  static bool isIOS() => Platform.isIOS;
  static bool isAndroid() => Platform.isAndroid;
  static bool isMac() => Platform.isMacOS;
  static bool isWindows() => Platform.isWindows;

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static String getPlatform() {
    if (isWeb()) {
      return "web";
    }
    if (isIOS()) {
      return "ios";
    }
    if (isAndroid()) {
      return "android";
    }
    if (isMac()) {
      return "mac";
    }
    if (isWindows()) {
      return "windows";
    }
    return "unknown";
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // If our width is more than 1100 then we consider it a desktop
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1150) {
          return desktop;
        }
        // If width it less then 1100 and more then 650 we consider it as tablet
        else if (constraints.maxWidth >= 650) {
          return tablet;
        }
        // Or less then that we called it mobile
        else {
          return mobile;
        }
      },
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// HOW TO USE :

/* 

==========================
==========================

  if (Responsive.isMobile(context)) BackButton(),
  
==========================
==========================

  if (Responsive.isDesktop(context))
  IconButton(
    icon: WebsafeSvg.asset(
      "assets/Icons/Printer.svg",
      width: 24,
    ),
    onPressed: () {},
  ),

==========================
==========================

  return Scaffold(
      body: Responsive(
        
        
        mobile: ListOfEmails(),


        tablet: Row(
          children: [
            Expanded(
              flex: 6,
              child: ListOfEmails(),
            ),
            Expanded(
              flex: 9,
              child: EmailScreen(),
            ),
          ],
        ),


        desktop: Row(
          children: [
            Expanded(
              flex: _size.width > 1340 ? 2 : 4,
              child: SideMenu(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 3 : 5,
              child: ListOfEmails(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 8 : 10,
              child: EmailScreen(),
            ),
          ],
        ),


      ),
    );

==========================
==========================

*/ 