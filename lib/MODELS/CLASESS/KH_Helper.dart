// ignore_for_file: non_constant_identifier_names, unused_local_variable

import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:provider/provider.dart';
import 'package:untitled12/MODELS/CLASESS/KH_Responsivness.dart';
import 'package:untitled12/MODELS/CLASESS/KH_Themes.dart';
import 'package:untitled12/MODELS/SERVISES/SERVICES/Constants.dart';

// ignore: camel_case_types
class KH_Helper {
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static TextDirection L_T_R() {
    return ui.TextDirection.ltr;
  }

  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static TextDirection R_T_L() {
    return ui.TextDirection.rtl;
  }

  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static hideKeyBoard({required BuildContext context}) {
    FocusScope.of(context).unfocus();
  }

  static requestFocusOnTextField({required FocusNode theFocusNode}) {
    theFocusNode.requestFocus();
    // FocusScope.of(context).requestFocus(theFocusNode);
    // FocusScope.of(context).nextFocus();
  }

  static unFocusFromTextField({required FocusNode theFocusNode}) {
    theFocusNode.unfocus();
    // FocusScope.of(context).requestFocus(theFocusNode);
    // FocusScope.of(context).nextFocus();
  }

  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static bool isDarkModeOn({required BuildContext context}) {
    final themesProvider = Provider.of<ThemesProvider>(context, listen: false);
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkModeOn = brightness == Brightness.dark;

    if (themesProvider.getSellectedTheme == ThemeMode.system) {
      if (isDarkModeOn) {
        KH_Helper.safePrint(
            "shared preference theme is : system == will return DARK theme from device");
        return true;
      } else {
        KH_Helper.safePrint(
            "shared preference theme is : system == will return LIGHT theme from device");
        return false;
      }
    } else if (themesProvider.getSellectedTheme == ThemeMode.light) {
      KH_Helper.safePrint(
          "shared preference theme is : LIGHT == will return LIGHT theme from shared preference");
      return false;
    } else if (themesProvider.getSellectedTheme == ThemeMode.dark) {
      KH_Helper.safePrint(
          "shared preference theme is : DARK == will return DARK theme from shared preference");
      return true;
    } else {
      return false;
    }

    // NotificationListener();
  }

  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  // static Future<void> showLogInRequierdAlert({
  //   required BuildContext context,
  //   required String bodyMessage,
  // }) async {
  //   final _s = S.of(context);

  //   final results = await KH_Alerts.showYesNoVerticalAlertDialog(
  //     context: context,
  //     isIconeAlert: true,
  //     alertType: HudType.warning,
  //     isDismissable: true,
  //     title: _s.LogInRequierdAlertTitle,
  //     body: bodyMessage,
  //     yesText: _s.LogInRequierdAlertNow,
  //     noText: _s.LogInRequierdAlertLater,
  //   );

  //   if (results == yesNoAlertsActions.yes) {
  //     // Navigator.pop(context);
  //     // KH_Alerts.showKHprogressHUDwithLoading(context: context);
  //     LocalAuthOperations.removeUserInfoFromSharedPreference().then((_) {
  //       LocalAuthOperations.saveOnBoardingStatus(newStatus: true);
  //       KH_Helper.safePrint(
  //           "user is removed from local now , go to splash screen");
  //       // Future.delayed(Duration(seconds: 2), () {
  //       // Navigator.pop(context);
  //       Navigator.pushNamedAndRemoveUntil(
  //         context,
  //         // SplachScreen.routName,
  //         LogInScreen.routName,
  //         (route) => false,
  //       );
  //       // });
  //     });
  //   } else {
  //     // Navigator.of(context).pop();
  //   }
  // }

  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static EdgeInsets getResponsivePadding({required BuildContext context}) {
    final padding = KH_Responsivenes.isDesktop(context)
        ? EdgeInsets.symmetric(
            horizontal: 33,
            vertical: 22,
          )
        : KH_Responsivenes.isTablet(context)
            ? EdgeInsets.symmetric(
                horizontal: 33,
                vertical: 22,
              )
            : EdgeInsets.symmetric(
                horizontal: 1,
                vertical: 1,
              );
    return padding;
  }

  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static EdgeInsets getHorizontalResponsivePadding({
    required BuildContext context,
    double? mobilePadding,
    double? mobileVirticalPadding,
    double? tapetVirticalPadding,
    double? tapetHorizontalPadding,
  }) {
    final padding = KH_Responsivenes.isDesktop(context)
        ? EdgeInsets.symmetric(
            horizontal: 33,
            // vertical: 22,
          )
        : KH_Responsivenes.isTablet(context)
            ? EdgeInsets.symmetric(
                horizontal: tapetHorizontalPadding ?? 33,
                vertical: tapetVirticalPadding ?? 1,
              )
            : EdgeInsets.symmetric(
                horizontal: mobilePadding ?? 1,
                vertical: mobileVirticalPadding ?? 1,
              );
    return padding;
  }

  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static String ChangeArabicNumbersToEnglishNumbers(String s) {
    var sb = new StringBuffer();
    for (int i = 0; i < s.length; i++) {
      switch (s[i]) {
        //Persian digits
        case '\u06f0':
          sb.write('0');
          break;
        case '\u06f1':
          sb.write('1');
          break;
        case '\u06f2':
          sb.write('2');
          break;
        case '\u06f3':
          sb.write('3');
          break;
        case '\u06f4':
          sb.write('4');
          break;
        case '\u06f5':
          sb.write('5');
          break;
        case '\u06f6':
          sb.write('6');
          break;
        case '\u06f7':
          sb.write('7');
          break;
        case '\u06f8':
          sb.write('8');
          break;
        case '\u06f9':
          sb.write('9');
          break;

        //Arabic digits
        case '\u0660':
          sb.write('0');
          break;
        case '\u0661':
          sb.write('1');
          break;
        case '\u0662':
          sb.write('2');
          break;
        case '\u0663':
          sb.write('3');
          break;
        case '\u0664':
          sb.write('4');
          break;
        case '\u0665':
          sb.write('5');
          break;
        case '\u0666':
          sb.write('6');
          break;
        case '\u0667':
          sb.write('7');
          break;
        case '\u0668':
          sb.write('8');
          break;
        case '\u0669':
          sb.write('9');
          break;
        default:
          sb.write(s[i]);
          break;
      }
    }
    return sb.toString();
  }

  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static Text getCurrencySympol(String currencySymbol) {
    return Text(
      currencySymbol,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold,
      ),
    );
  }

  // static Widget getNumberWithCurrencySympol({
  //   required String number,
  //   required String currencySymbol,
  //   TextStyle? textStyle,
  //   ThemeData? theme,
  //   double? fontSize = 16,
  //   Color? textColor,
  //   FontWeight? fontWeight = FontWeight.bold,
  // }) {
  //   if (KH_Responsivenes.isIOS()) {
  //     return Text(
  //       "${KH_Helper.getFormattedNumbers(theStringNumber: number)}" +
  //           "  $currencySymbol",
  //       style: (textStyle != null)
  //           ? textStyle
  //           : (theme != null)
  //               ? theme.textTheme.titleSmall?.copyWith(
  //                   fontSize: fontSize,
  //                   color: textColor,
  //                 )
  //               : TextStyle(),
  //     );
  //   } else {}
  //   return Row(
  //     children: [
  //       Text(
  //         "${KH_Helper.getFormattedNumbers(theStringNumber: number)} ",
  //         style: TextStyle(
  //           fontFamily: 'Roboto',
  //           fontWeight: fontWeight,
  //           fontSize: fontSize,
  //           color: textColor,
  //         ),
  //       ),
  //       Text(
  //         currencySymbol,
  //         style: TextStyle(
  //           fontFamily: 'Roboto',
  //           fontWeight: fontWeight,
  //           fontSize: fontSize,
  //           color: textColor,
  //         ),
  //       ),
  //     ],
  //   );
  // }

  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static void safePrint(Object? value) {
    if (K_IS_APP_IN_PRODUCTION == false) {
      print(value);
    }
  }

  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  // static Future<void> showConfirmationAlert({
  //   required BuildContext context,
  //   required String? title,
  //   required String? bodyMessage,
  //   String? yesText,
  //   required VoidCallback onConfirming,
  // }) async {
  //   final _s = S.of(context);

  //   final results = await KH_Alerts.showYesNoVerticalAlertDialog(
  //     context: context,
  //     isIconeAlert: true,
  //     alertType: HudType.warning,
  //     isDismissable: false,
  //     title: title ?? _s.confirmTitle,
  //     body: bodyMessage ?? _s.confirmMessage,
  //     yesText: yesText ?? _s.confirmBtn,
  //     noText: _s.confirmCancel,
  //   );
  //   if (results == yesNoAlertsActions.yes) {
  //     // Navigator.pop(context);
  //     onConfirming();
  //   } else {
  //     // Navigator.of(context).pop();
  //   }
  // }

  // //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  // //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  // //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  // static Future<void> copyText({required String text}) async {
  //   await Clipboard.setData(
  //     ClipboardData(
  //       text: text,
  //     ),
  //   );
  // }

  // //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  // //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  // //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  // static String getFormattedNumbers({
  //   required String theStringNumber,
  // }) {
  //   final formatter = intl.NumberFormat.decimalPattern();
  //   final formatter2 = intl.NumberFormat.currency(locale: "en_US", symbol: "");

  //   final double? theDoubleNumber = double.tryParse(theStringNumber);
  //   if (theDoubleNumber != null) {
  //     return formatter.format(theDoubleNumber);
  //     // return formatter2.format(theDoubleNumber);
  //   } else {
  //     return theStringNumber;
  //   }
  // }

  // static String getFormattedNumbersSpechial({
  //   required String theStringNumber,
  // }) {
  //   final formatter = intl.NumberFormat.decimalPattern();
  //   final double? theDoubleNumber = double.tryParse(theStringNumber);
  //   final int? theIntNumber = (theDoubleNumber?.toInt() ?? 0);
  //   //
  //   if (theDoubleNumber != null) {
  //     return formatter.format(theIntNumber);
  //     // return formatter2.format(theDoubleNumber);
  //   } else {
  //     return theStringNumber;
  //   }
  // }

  // //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  // //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  // //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  // static String getTagsCompinedString({
  //   required List<String> array,
  //   bool isBiller = false,
  // }) {
  //   if (array.isEmpty) {
  //     return "---------";
  //   }
  //   //@@@@@@@@@@@@@//
  //   String barier = "   •   ";
  //   if (isBiller) {
  //     barier = "   ||   ";
  //   }
  //   //@@@@@@@@@@@@@//
  //   String compinedString = "";
  //   for (var One in array) {
  //     if (One == array.first) {
  //       compinedString += One;
  //     } else {
  //       compinedString += barier + One;
  //     }
  //   }
  //   return compinedString;
  // }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@           ALERTS           @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  // static Widget getStoreAlertsMessagesBox({
  //   required ThemeData theme,
  //   required List<AlertObject>? alertsArray,
  // }) {
  //   //@@@@@@@@@@@@@//
  //   //@@@@@@@@@@@@@//
  //   final _KH_Colors = theme.extension<KH_Colors>()!;
  //   List<Widget> messagesChips = [];
  //   //@@@@@@@@@@@@@//
  //   //@@@@@@@@@@@@@//
  //   if (alertsArray == null || alertsArray.length == 0) {
  //     return SizedBox(
  //       height: 0.01,
  //     );
  //   } else {
  //     for (var item in alertsArray) {
  //       //@@@@@@@@@@@@@//
  //       //@@@@@@@@@@@@@//
  //       Color theBgColor = theme.primaryColor.withOpacity(0.15);
  //       Color theTxtColor = theme.primaryColor;
  //       //@@@@@@@@@@@@@//
  //       //@@@@@@@@@@@@@//
  //       if (item.color == AlertsColorsEnum.info.rawValue) {
  //         theBgColor = Color(0XFF555FA1).withOpacity(0.15);
  //         theTxtColor = Color(0XFF555FA1);
  //       } else if (item.color == AlertsColorsEnum.warning.rawValue) {
  //         theBgColor = Colors.orange[800]!.withOpacity(0.15);
  //         theTxtColor = Colors.orange[800]!;
  //       } else if (item.color == AlertsColorsEnum.danger.rawValue) {
  //         theBgColor = _KH_Colors.RedColor.withOpacity(0.15);
  //         theTxtColor = _KH_Colors.RedColor;
  //       } else if (item.color == AlertsColorsEnum.success.rawValue) {
  //         theBgColor = _KH_Colors.GreenColor.withOpacity(0.15);
  //         theTxtColor = _KH_Colors.GreenColor;
  //       } else if (item.color == AlertsColorsEnum.dark.rawValue) {
  //         theBgColor = _KH_Colors.SubTitelsColor.withOpacity(0.2);
  //         theTxtColor = _KH_Colors.SubTitelsColor;
  //       } else {
  //         theBgColor = theme.primaryColor.withOpacity(0.15);
  //         theTxtColor = theme.primaryColor;
  //       }
  //       //@@@@@@@@@@@@@//
  //       //@@@@@@@@@@@@@//
  //       messagesChips.add(Column(
  //         children: [
  //           // KH_Ship(
  //           //   text: item.message ?? "---",
  //           //   bgColor: theBgColor,
  //           //   fixedWidth: double.infinity,
  //           //   margin: 6,
  //           //   padding: 1,
  //           //   // paddingInside: 22,
  //           //   textStyle: theme.textTheme.bodyText1?.copyWith(
  //           //     color: theTxtColor,
  //           //   ),
  //           // ),
  //           KH_SplashedCard(
  //             addBorderShadow: false,
  //             addShadow: false,
  //             bgColor: theBgColor,
  //             splashColor: theBgColor,
  //             width: double.infinity,
  //             innerPadding: 0,
  //             outsideMargin: 8,
  //             borderRadius: 10,
  //             onTapping: () {},
  //             child: Padding(
  //               padding: const EdgeInsets.all(12.0),
  //               child: Text(
  //                 item.title ?? "----",
  //                 style: theme.textTheme.titleSmall?.copyWith(
  //                   color: theTxtColor,
  //                 ),
  //                 textAlign: TextAlign.center,
  //               ),
  //             ),
  //           ),
  //           SizedBox(
  //             height: 8,
  //           ),
  //         ],
  //       ));
  //       //@@@@@@@@@@@@@//
  //       //@@@@@@@@@@@@@//
  //     }
  //     //@@@@@@@@@@@@@//
  //     //@@@@@@@@@@@@@//

  //     return Column(
  //       children: [
  //         KH_ShadowCard(
  //           borderRadius: 16,
  //           addBorderShadow: false,
  //           addShadow: false,
  //           innerPadding: 0,
  //           outsideMargin: 0,
  //           child: Column(
  //             children: [
  //               SizedBox(
  //                 height: 4,
  //               ),
  //               Column(
  //                 children: messagesChips,
  //               ),
  //               SizedBox(
  //                 height: 4,
  //               ),
  //             ],
  //           ),
  //         ),
  //         // SizedBox(height: 22),
  //       ],
  //     );

  //     //@@@@@@@@@@@@@//
  //     //@@@@@@@@@@@@@//
  //   }
  // }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@         AD PRESSED         @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

//   static void handleAdWhenPressed({
//     required BuildContext context,
//     required AdvertisementsObject theAd,
//     required StoreObject? theStore,
//     required ProductObject? theProduct,
//   }) {
//     final objectType = theAd.objectable_type;
//     final objectId = theAd.objectable_id;
//     final url = theAd.url;
//     //
//     if (objectId != null) {
//       if (objectType == ObjectableTypeEnum.Branch.rawValue) {
//         KH_Helper.safePrint("WILL GO TO BRANSHE");
//       } else if (objectType == ObjectableTypeEnum.Store.rawValue) {
//         KH_Helper.safePrint("WILL GO TO STORE");
//         final int? id = int.tryParse(objectId);
//         if (id != null) {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => StoreDetailsScreen(
//                 theStoreId: id,
//                 storeType: null,
//               ),
//             ),
//           );
//         }
//       } else if (objectType == ObjectableTypeEnum.Product.rawValue) {
//         KH_Helper.safePrint("WILL GO TO PRODUCT");
//         final int? id = int.tryParse(objectId);
//         if (id != null) {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => NewProductsDetailsHeader(
//                 theProduct: theProduct,
//                 theProductId: id,
//                 theStore: theStore,
//               ),
//             ),
//           );
//         }
//       }
//     } else {
//       if (url != null) {
//         KH_Helper.safePrint("WILL GO TO URL : $url");
//         KH_Tools.openWebSite(url: url);
//       } else {
//         KH_Helper.safePrint("NO OBJECT ... NO URL");
//       }
//     }
//   }

// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

//   static bool isOrderCurrent({
//     required OrderObject? theOrder,
//   }) {
//     if (theOrder?.status == OrderStatusEnum.cancelled.rawValue ||
//         theOrder?.status == OrderStatusEnum.done.rawValue ||
//         theOrder?.status == OrderStatusEnum.rejected.rawValue ||
//         theOrder?.status == OrderStatusEnum.retrieved.rawValue) {
//       KH_Helper.safePrint("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
//       KH_Helper.safePrint("OLD ORDER");
//       KH_Helper.safePrint("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
//       return false;
//     } else {
//       KH_Helper.safePrint("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
//       KH_Helper.safePrint("CURRENT ORDER");
//       KH_Helper.safePrint("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
//       return true;
//     }
//   }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

//   static String getStatusName({
//     required OrderObject? theOrder,
//     required KH_Colors KH_Colors,
//     required S ss,
//   }) {
//     Color _statusColor = Colors.transparent;
//     String _orderStatus = "";
//     if (theOrder?.status == OrderStatusEnum.pending.rawValue) {
//       _statusColor = Colors.orange[800]!;
//       _orderStatus = ss.WaitingApprovalOrderMessage;
//     } else if (theOrder?.status == OrderStatusEnum.preparing.rawValue) {
//       _statusColor = Colors.lightBlue[800]!;
//       _orderStatus = ss.PreparingOrderMessage;
//     } else if (theOrder?.status == OrderStatusEnum.done.rawValue) {
//       _statusColor = KH_Colors.GreenColor;
//       _orderStatus = ss.RecivedOrderMessage;
//     } else if (theOrder?.status == OrderStatusEnum.cancelled.rawValue) {
//       _statusColor = KH_Colors.RedColor;
//       _orderStatus = ss.CanceledOrderMessage;
//     } else if (theOrder?.status == OrderStatusEnum.rejected.rawValue) {
//       _statusColor = KH_Colors.RedColor;
//       _orderStatus = ss.RejectedOrderMessage;
//     } else if (theOrder?.status == OrderStatusEnum.retrieved.rawValue) {
//       _statusColor = KH_Colors.RedColor;
//       _orderStatus = ss.RetrievedOrderMessage;
//     } else if (theOrder?.status == OrderStatusEnum.delivering.rawValue) {
//       _statusColor = Colors.purple;
//       _orderStatus = ss.OnWayOrderMessage;
//     } else if (theOrder?.status == OrderStatusEnum.ready.rawValue) {
//       _statusColor = Colors.purple;
//       _orderStatus = ss.ReadyOrderMessage;
//     } else if (theOrder?.status ==
//         OrderStatusEnum.waiting_for_payment.rawValue) {
//       if (theOrder?.payment_proof == null) {
//         _statusColor = KH_Colors.SubTitelsColor;
//         _orderStatus = ss.waitForPayment;
//       } else {
//         _statusColor = KH_Colors.TitelsColor;
//         _orderStatus = ss.waitForPaymentConfirmation;
//       }
//     }

//     return _orderStatus;
//   }

// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

//   static Color getStatusColor({
//     required OrderObject? theOrder,
//     required KH_Colors KH_Colors,
//     required S ss,
//   }) {
//     Color _statusColor = Colors.transparent;
//     String _orderStatus = "";
//     if (theOrder?.status == OrderStatusEnum.pending.rawValue) {
//       _statusColor = Colors.orange[800]!;
//       _orderStatus = ss.WaitingApprovalOrderMessage;
//     } else if (theOrder?.status == OrderStatusEnum.preparing.rawValue) {
//       _statusColor = Colors.lightBlue[800]!;
//       _orderStatus = ss.PreparingOrderMessage;
//     } else if (theOrder?.status == OrderStatusEnum.done.rawValue) {
//       _statusColor = KH_Colors.GreenColor;
//       _orderStatus = ss.RecivedOrderMessage;
//     } else if (theOrder?.status == OrderStatusEnum.cancelled.rawValue) {
//       _statusColor = KH_Colors.RedColor;
//       _orderStatus = ss.CanceledOrderMessage;
//     } else if (theOrder?.status == OrderStatusEnum.rejected.rawValue) {
//       _statusColor = KH_Colors.RedColor;
//       _orderStatus = ss.RejectedOrderMessage;
//     } else if (theOrder?.status == OrderStatusEnum.retrieved.rawValue) {
//       _statusColor = KH_Colors.RedColor;
//       _orderStatus = ss.RetrievedOrderMessage;
//     } else if (theOrder?.status == OrderStatusEnum.delivering.rawValue) {
//       _statusColor = Colors.purple;
//       _orderStatus = ss.OnWayOrderMessage;
//     } else if (theOrder?.status == OrderStatusEnum.ready.rawValue) {
//       _statusColor = Colors.purple;
//       _orderStatus = ss.ReadyOrderMessage;
//     } else if (theOrder?.status ==
//         OrderStatusEnum.waiting_for_payment.rawValue) {
//       if (theOrder?.payment_proof == null) {
//         _statusColor = KH_Colors.SubTitelsColor;
//         _orderStatus = ss.waitForPayment;
//       } else {
//         _statusColor = KH_Colors.TitelsColor;
//         _orderStatus = ss.waitForPaymentConfirmation;
//       }
//     }
//     return _statusColor;
//   }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
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
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class GoogleMapStyles {
  static String darkMapStyle = '''
[
  {
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#242f3e"
      }
    ]
  },
  {
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#746855"
      }
    ]
  },
  {
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#242f3e"
      }
    ]
  },
  {
    "featureType": "administrative.locality",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#d59563"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#d59563"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#263c3f"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#6b9a76"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#38414e"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#212a37"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9ca5b3"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#746855"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#1f2835"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#f3d19c"
      }
    ]
  },
  {
    "featureType": "transit",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#2f3948"
      }
    ]
  },
  {
    "featureType": "transit.station",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#d59563"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#17263c"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#515c6d"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#17263c"
      }
    ]
  }
]
''';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static String lightMapStyle = "[]";
}
