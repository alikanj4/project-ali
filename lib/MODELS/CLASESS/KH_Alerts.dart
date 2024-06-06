// ignore_for_file: camel_case_types, non_constant_identifier_names, unused_local_variable

import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:untitled12/MODELS/CLASESS/KH_Helper.dart';
import 'package:untitled12/MODELS/CLASESS/KH_Themes.dart';
import 'package:untitled12/VIEW/KH_Componants.dart';

import 'KH_Responsivness.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@           ENUMS            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

enum yesNoAlertsActions {
  yes,
  no,
}

enum multiOptionsActions {
  option1Action,
  option2Action,
  option3Action,
  optionCancel,
}

enum HudType {
  success,
  warning,
  errror,
}

class KH_Alerts {
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@         KH ALERT           @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static Future<yesNoAlertsActions> showYesNoAlertDialog({
    required BuildContext context,
    String? title,
    String? body,
    TextStyle? bodyTextStyle,
    String? yesText,
    String? noText,
    TextStyle? yesTextStyle,
    TextStyle? noTextStyle,
    bool? isDismissable,
    TextAlign? textAlignment,
  }) async {
    final action = await showDialog(
      context: context,
      barrierDismissible: isDismissable ?? false,
      builder: (_) {
        final _theme = Theme.of(context);
        final _KH_Colors = _theme.extension<KH_Colors>()!;
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
        return Center(
          child: Card(
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(25),
            // ),
            //@@@@@@@@@@@@@//
            //@@@@@@@@@@@@@//
            shape: SmoothRectangleBorder(
              borderRadius: SmoothBorderRadius(
                cornerRadius: 25,
                cornerSmoothing: 1,
              ),
            ),
            //@@@@@@@@@@@@@//
            //@@@@@@@@@@@@@//
            child: Container(
              width: MediaQuery.of(context).size.width - 32,
              // decoration: BoxDecoration(
              //   color: _theme.dialogBackgroundColor,
              //   borderRadius: BorderRadius.circular(25),
              // ),
              decoration: ShapeDecoration(
                color: _theme.dialogBackgroundColor,
                shape: SmoothRectangleBorder(
                  borderRadius: SmoothBorderRadius(
                    cornerRadius: 25,
                    cornerSmoothing: 1,
                  ),
                ),
              ),
              //@@@@@@@@@@@@@//
              //@@@@@@@@@@@@@//
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: IntrinsicHeight(
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //@@@@@@@@@@@@@//
                      if (body == null)
                        SizedBox(
                          height: 10,
                        ),
                      if (title != null)
                        Text(
                          title,
                          style: _theme.textTheme.titleSmall,
                          textAlign: textAlignment ?? TextAlign.center,
                        ),
                      // if (body != null)
                      SizedBox(
                        height: 16,
                      ),
                      //@@@@@@@@@@@@@//
                      if (body != null)
                        Text(
                          body,
                          style: bodyTextStyle ?? _theme.textTheme.bodyMedium,
                          textAlign: textAlignment ?? TextAlign.center,
                        ),
                      if (body != null)
                        SizedBox(
                          height: 16,
                        ),
                      Divider(),
                      SizedBox(
                        height: 2,
                      ),
                      //@@@@@@@@@@@@@//
                      Container(
                        // height: 60,
                        // color: Colors.black12,
                        // width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: TextButton(
                                onPressed: () => Navigator.of(context)
                                    .pop(yesNoAlertsActions.yes),
                                child: Text(
                                  yesText ?? "YES",
                                  style: yesTextStyle ??
                                      TextStyle(
                                        color: _KH_Colors.GreenColor,
                                      ),
                                ),
                              ),
                            ),
                            //@@@@@@@@@@@@@//
                            Expanded(
                              child: TextButton(
                                onPressed: () => Navigator.of(context)
                                    .pop(yesNoAlertsActions.no),
                                child: Text(
                                  noText ?? "NO",
                                  style: noTextStyle ??
                                      TextStyle(
                                        color: _KH_Colors.RedColor,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //@@@@@@@@@@@@@//
                    ],
                  ),
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                ),
              ),
            ),
          ),
        );
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
      },
    );
    return (action != null) ? action : yesNoAlertsActions.no;
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@         KH ALERT           @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static Future<yesNoAlertsActions> showYesNoVerticalAlertDialog({
    required BuildContext context,
    bool isIconeAlert = false,
    String? iconePath,
    HudType alertType = HudType.warning,
    String? title,
    String? body,
    TextStyle? bodyTextStyle,
    String? yesText,
    String? noText,
    TextStyle? yesTextStyle,
    TextStyle? noTextStyle,
    bool? isDismissable,
    TextAlign? textAlignment,
  }) async {
    final action = await showDialog(
      context: context,
      barrierDismissible: isDismissable ?? false,
      builder: (_) {
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
        final _theme = Theme.of(context);
        final _KH_Colors = _theme.extension<KH_Colors>()!;
        final _mediaQuery = MediaQuery.of(context).size;
        String _imagePath = "assets/icons/hud/icons8-info_squared.png";
        Color? textColor = _KH_Colors.TitelsColor;
        if (alertType == HudType.success) {
          textColor = _KH_Colors.GreenColor;
          _imagePath = "assets/icons/hud/icons8-tick_box.png";
        } else if (alertType == HudType.warning) {
          textColor = Colors.orange[800];
          _imagePath = "assets/icons/hud/icons8-info_squared.png";
        } else if (alertType == HudType.errror) {
          textColor = _KH_Colors.RedColor;
          _imagePath = "assets/icons/hud/icons8-close_window.png";
        }
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
        return Center(
          child: Card(
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(33),
            // ),
            //@@@@@@@@@@@@@//
            //@@@@@@@@@@@@@//
            shape: SmoothRectangleBorder(
              borderRadius: SmoothBorderRadius(
                cornerRadius: 33,
                cornerSmoothing: 1,
              ),
            ),
            //@@@@@@@@@@@@@//
            //@@@@@@@@@@@@@//
            child: Container(
              // width: MediaQuery.of(context).size.width - 32,

              width: KH_Responsivenes.isMobile(context)
                  ? _mediaQuery.width - 32
                  : (KH_Responsivenes.isTablet(context)
                      ? _mediaQuery.width / 1.7
                      : _mediaQuery.width / 2.7),
              // height: KH_Responsivenes.isMobile(context)
              //     ? _mediaQuery.height / 2
              //     : (KH_Responsivenes.isMobileLandScaping(context)
              //         ? _mediaQuery.height / 1.2
              //         : _mediaQuery.height / 2),

              // decoration: BoxDecoration(
              //   color: _theme.dialogBackgroundColor,
              //   borderRadius: BorderRadius.circular(33),
              // ),
              decoration: ShapeDecoration(
                color: _theme.dialogBackgroundColor,
                shape: SmoothRectangleBorder(
                  borderRadius: SmoothBorderRadius(
                    cornerRadius: 33,
                    cornerSmoothing: 1,
                  ),
                ),
              ),
              //@@@@@@@@@@@@@//
              //@@@@@@@@@@@@@//
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: IntrinsicHeight(
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //@@@@@@@@@@@@@//
                      if (isIconeAlert)
                        Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image(
                              fit: BoxFit.cover,
                              height: 55,
                              width: 55,
                              image: AssetImage(iconePath ?? _imagePath),
                            )),
                      //@@@@@@@@@@@@@//
                      if (body == null)
                        SizedBox(
                          height: 10,
                        ),
                      if (title != null)
                        Text(
                          title,
                          style: _theme.textTheme.titleSmall,
                          textAlign: textAlignment,
                        ),
                      // if (body != null)
                      SizedBox(
                        height: 16,
                      ),
                      //@@@@@@@@@@@@@//
                      if (body != null)
                        Text(
                          body,
                          style: bodyTextStyle ?? _theme.textTheme.bodyMedium,
                          textAlign: textAlignment ?? TextAlign.center,
                        ),
                      if (body != null)
                        SizedBox(
                          height: 16,
                        ),
                      Divider(),
                      SizedBox(
                        height: 2,
                      ),
                      //@@@@@@@@@@@@@//
                      Container(
                        // height: 300,
                        // color: Colors.black12,
                        // width: double.infinity,
                        child: IntrinsicHeight(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              //@@@@@@@@@@@@@//
                              //@@@@@@@@@@@@@//
                              TextButton(
                                onPressed: () => Navigator.of(context)
                                    .pop(yesNoAlertsActions.yes),
                                child: Text(
                                  yesText ?? "YES",
                                  style: yesTextStyle ??
                                      _theme.textTheme.titleSmall?.copyWith(
                                        color: _KH_Colors.GreenColor,
                                      ),
                                ),
                              ),

                              Divider(),
                              //@@@@@@@@@@@@@//
                              //@@@@@@@@@@@@@//
                              TextButton(
                                onPressed: () => Navigator.of(context)
                                    .pop(yesNoAlertsActions.no),
                                child: Text(
                                  noText ?? "NO",
                                  style: noTextStyle ??
                                      _theme.textTheme.titleSmall?.copyWith(
                                        color: _KH_Colors.RedColor,
                                      ),
                                ),
                              ),
                              //@@@@@@@@@@@@@//
                              //@@@@@@@@@@@@@//
                            ],
                          ),
                        ),
                      ),
                      //@@@@@@@@@@@@@//
                    ],
                  ),
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                ),
              ),
            ),
          ),
        );
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
      },
    );
    return (action != null) ? action : yesNoAlertsActions.no;
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@      KH SHEAT ACTION       @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static Future<multiOptionsActions> showMultiOptionsDialog({
    required BuildContext context,
    String? title,
    String? body,
    TextStyle? bodyTextStyle,
    String? option1Text,
    String? option2Text,
    String? option3Text,
    TextStyle? option1TextStyle,
    TextStyle? option2TextStyle,
    TextStyle? option3TextStyle,
    bool isDismissable = false,
    TextAlign textAlignment = TextAlign.center,
    bool showCancelButton = false,
    bool showSecondOption = true,
  }) async {
    final action = await showDialog(
      context: context,
      barrierDismissible: isDismissable,
      builder: (_) {
        final _theme = Theme.of(context);
        final _KH_Colors = _theme.extension<KH_Colors>()!;
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//

        return Center(
          child: Card(
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(25),
            // ),
            //@@@@@@@@@@@@@//
            //@@@@@@@@@@@@@//
            shape: SmoothRectangleBorder(
              borderRadius: SmoothBorderRadius(
                cornerRadius: 25,
                cornerSmoothing: 1,
              ),
            ),
            //@@@@@@@@@@@@@//
            //@@@@@@@@@@@@@//
            child: Container(
              // width: MediaQuery.of(context).size.width - 32,

              width: KH_Responsivenes.isMobile(context) == true
                  ? MediaQuery.of(context).size.width - 32
                  : (KH_Responsivenes.isTablet(context) == true
                      ? MediaQuery.of(context).size.width / 2
                      : 500),

              // decoration: BoxDecoration(
              //   color: _theme.dialogBackgroundColor,
              //   borderRadius: BorderRadius.circular(25),
              // ),
              decoration: ShapeDecoration(
                color: _theme.dialogBackgroundColor,
                shape: SmoothRectangleBorder(
                  borderRadius: SmoothBorderRadius(
                    cornerRadius: 25,
                    cornerSmoothing: 1,
                  ),
                ),
              ),
              //@@@@@@@@@@@@@//
              //@@@@@@@@@@@@@//
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: IntrinsicHeight(
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //@@@@@@@@@@@@@//
                      if (body == null)
                        SizedBox(
                          height: 10,
                        ),
                      if (title != null)
                        Text(
                          title,
                          style: _theme.textTheme.titleSmall,
                          textAlign: textAlignment,
                        ),
                      // if (body != null)
                      SizedBox(
                        height: 16,
                      ),
                      //@@@@@@@@@@@@@//
                      if (body != null)
                        Text(
                          body,
                          style: bodyTextStyle ?? _theme.textTheme.bodyMedium,
                          textAlign: textAlignment,
                        ),
                      if (body != null)
                        SizedBox(
                          height: 16,
                        ),
                      Divider(),
                      SizedBox(
                        height: 2,
                      ),
                      //@@@@@@@@@@@@@//
                      Container(
                        // height: 300,
                        // color: Colors.black12,
                        // width: double.infinity,
                        child: IntrinsicHeight(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              TextButton(
                                onPressed: () => Navigator.of(context)
                                    .pop(multiOptionsActions.option1Action),
                                child: Text(
                                  option1Text ?? "الخيار الأول",
                                  style: option1TextStyle ??
                                      _theme.textTheme.titleSmall,
                                ),
                              ),
                              Divider(),
                              //@@@@@@@@@@@@@//
                              if (showSecondOption)
                                TextButton(
                                  onPressed: () => Navigator.of(context)
                                      .pop(multiOptionsActions.option2Action),
                                  child: Text(
                                    option2Text ?? "الخيار الثاني",
                                    style: option2TextStyle ??
                                        _theme.textTheme.titleSmall,
                                  ),
                                ),
                              if (showSecondOption) Divider(),
                              //@@@@@@@@@@@@@//
                              TextButton(
                                onPressed: () => Navigator.of(context)
                                    .pop(multiOptionsActions.option3Action),
                                child: Text(
                                  option3Text ?? "إلغاء الأمر",
                                  style: option3TextStyle ??
                                      _theme.textTheme.titleSmall?.copyWith(
                                        color: _KH_Colors.RedColor,
                                      ),
                                ),
                              ),
                              //@@@@@@@@@@@@@//
                              if (showCancelButton) Divider(),
                              if (showCancelButton)
                                TextButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: Text(
                                    "إلغاء الأمر",
                                    style: option3TextStyle ??
                                        _theme.textTheme.titleSmall?.copyWith(
                                          color: _KH_Colors.RedColor,
                                        ),
                                  ),
                                ),
                              //@@@@@@@@@@@@@//
                            ],
                          ),
                        ),
                      ),
                      //@@@@@@@@@@@@@//
                    ],
                  ),
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                ),
              ),
            ),
          ),
        );
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
      },
    );
    // return (action != null) ? action : multiOptionsActions.option3Action;
    return (action != null) ? action : multiOptionsActions.optionCancel;
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@       MESSAGE BOX          @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static Future<bool> showMessageBoxDialog({
    required BuildContext context,
    String? title,
    String? body,
    TextStyle? bodyTextStyle,
    String? buttonText,
    TextStyle? buttonTextStyle,
    bool? isDismissable,
    TextAlign textAlignment = TextAlign.center,
    double buttonBorderRadius = 23,
  }) async {
    final isButtonPressed = await showDialog(
      context: context,
      barrierDismissible: isDismissable ?? false,
      builder: (_) {
        final _theme = Theme.of(context);
        final _KH_Colors = _theme.extension<KH_Colors>()!;
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//

        return Center(
          child: Card(
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(25),
            // ),
            //@@@@@@@@@@@@@//
            //@@@@@@@@@@@@@//
            shape: SmoothRectangleBorder(
              borderRadius: SmoothBorderRadius(
                cornerRadius: 25,
                cornerSmoothing: 1,
              ),
            ),
            //@@@@@@@@@@@@@//
            //@@@@@@@@@@@@@//
            child: Container(
              width: MediaQuery.of(context).size.width - 32,
              // decoration: BoxDecoration(
              //   color: _theme.dialogBackgroundColor,
              //   borderRadius: BorderRadius.circular(25),
              // ),
              decoration: ShapeDecoration(
                color: _theme.dialogBackgroundColor,
                shape: SmoothRectangleBorder(
                  borderRadius: SmoothBorderRadius(
                    cornerRadius: 25,
                    cornerSmoothing: 1,
                  ),
                ),
              ),
              //@@@@@@@@@@@@@//
              //@@@@@@@@@@@@@//
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: IntrinsicHeight(
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //@@@@@@@@@@@@@//
                      if (body == null)
                        SizedBox(
                          height: 10,
                        ),
                      if (title != null)
                        Text(
                          title,
                          style: _theme.textTheme.titleSmall,
                          textAlign: textAlignment,
                        ),
                      SizedBox(
                        height: 16,
                      ),
                      //@@@@@@@@@@@@@//
                      if (body != null)
                        Text(
                          body,
                          style: bodyTextStyle ?? _theme.textTheme.bodyMedium,
                          textAlign: textAlignment,
                        ),
                      if (body != null)
                        SizedBox(
                          height: 26,
                        ),
                      if (body == null)
                        SizedBox(
                          height: 10,
                        ),
                      //@@@@@@@@@@@@@//
                      Container(
                        height: 45,
                        width: 250,
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(16),
                        // ),
                        decoration: ShapeDecoration(
                          shape: SmoothRectangleBorder(
                            borderRadius: SmoothBorderRadius(
                              cornerRadius: 16,
                              cornerSmoothing: 1,
                            ),
                          ),
                        ),
                        //@@@@@@@@@@@@@//
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(buttonBorderRadius),
                            ),

                            //  shape: SmoothRectangleBorder(
                            //   borderRadius: SmoothBorderRadius(
                            //     cornerRadius: 16,
                            //     cornerSmoothing: 1,
                            //   ),
                            // ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop(true);
                          },
                          child: Text(
                            buttonText ?? "OK",
                            style: buttonTextStyle,
                          ),
                        ),
                      ),
                      //@@@@@@@@@@@@@//
                    ],
                  ),
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                ),
              ),
            ),
          ),
        );
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
      },
    );
    return (isButtonPressed == null) ? false : true;
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@     ICONE MESSAGE BOX      @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static Future<bool> showIconeMessageBoxDialog({
    required BuildContext context,
    bool isIconeAlert = false,
    String? iconePath,
    HudType alertType = HudType.warning,
    String? title,
    String? body,
    TextStyle? bodyTextStyle,
    String? buttonText,
    TextStyle? buttonTextStyle,
    bool? isDismissable,
    TextAlign textAlignment = TextAlign.center,
    double buttonBorderRadius = 23,
    bool isFilledButton = true,
    Color? buttonTextColor,
    Color? buttonBackGroundColor,
  }) async {
    final isButtonPressed = await showDialog(
      context: context,
      barrierDismissible: isDismissable ?? false,
      builder: (_) {
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
        final _theme = Theme.of(context);
        final _KH_Colors = _theme.extension<KH_Colors>()!;
        final _mediaQuery = MediaQuery.of(context).size;
        String _imagePath = "assets/icons/hud/icons8-info_squared.png";
        Color? textColor = _KH_Colors.TitelsColor;
        if (alertType == HudType.success) {
          textColor = _KH_Colors.GreenColor;
          _imagePath = "assets/icons/hud/icons8-tick_box.png";
        } else if (alertType == HudType.warning) {
          textColor = Colors.orange[800];
          _imagePath = "assets/icons/hud/icons8-info_squared.png";
        } else if (alertType == HudType.errror) {
          textColor = _KH_Colors.RedColor;
          _imagePath = "assets/icons/hud/icons8-close_window.png";
        }
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//

/* 
            //@@@@@@@@@@@@@//
            //@@@@@@@@@@@@@//
            shape: SmoothRectangleBorder(
              borderRadius: SmoothBorderRadius(
                cornerRadius: 25,
                cornerSmoothing: 1,
              ),
            ),
            //@@@@@@@@@@@@@//
            //@@@@@@@@@@@@@//
            child: Container(
              width: MediaQuery.of(context).size.width - 32,
              // decoration: BoxDecoration(
              //   color: _theme.dialogBackgroundColor,
              //   borderRadius: BorderRadius.circular(25),
              // ),
              decoration: ShapeDecoration(
                color: _theme.dialogBackgroundColor,
                shape: SmoothRectangleBorder(
                  borderRadius: SmoothBorderRadius(
                    cornerRadius: 25,
                    cornerSmoothing: 1,
                  ),
                ),
              ),
              //@@@@@@@@@@@@@//
              //@@@@@@@@@@@@@//
 */

        return Center(
          child: Card(
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(25),
            // ),
            //@@@@@@@@@@@@@//
            //@@@@@@@@@@@@@//
            shape: SmoothRectangleBorder(
              borderRadius: SmoothBorderRadius(
                cornerRadius: 25,
                cornerSmoothing: 1,
              ),
            ),
            //@@@@@@@@@@@@@//
            //@@@@@@@@@@@@@//
            child: Container(
              width: KH_Responsivenes.isMobile(context) == true
                  ? _mediaQuery.width - 32
                  : (KH_Responsivenes.isTablet(context) == true
                      ? _mediaQuery.width / 2
                      : 400),
              // decoration: BoxDecoration(
              //   color: _theme.dialogBackgroundColor,
              //   borderRadius: BorderRadius.circular(25),
              // ),
              decoration: ShapeDecoration(
                color: _theme.dialogBackgroundColor,
                shape: SmoothRectangleBorder(
                  borderRadius: SmoothBorderRadius(
                    cornerRadius: 25,
                    cornerSmoothing: 1,
                  ),
                ),
              ),
              //@@@@@@@@@@@@@//
              //@@@@@@@@@@@@@//
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: IntrinsicHeight(
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //@@@@@@@@@@@@@//
                      if (isIconeAlert)
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image(
                            fit: BoxFit.cover,
                            height: 55,
                            width: 55,
                            image: AssetImage(iconePath ?? _imagePath),
                          ),
                        ),
                      //@@@@@@@@@@@@@//
                      if (body == null)
                        SizedBox(
                          height: 16,
                        ),
                      if (title != null)
                        Text(
                          title,
                          style: _theme.textTheme.titleSmall,
                          textAlign: textAlignment,
                        ),
                      SizedBox(
                        height: 16,
                      ),
                      //@@@@@@@@@@@@@//
                      if (body != null)
                        Text(
                          body,
                          style: bodyTextStyle ?? _theme.textTheme.bodyMedium,
                          textAlign: textAlignment,
                        ),
                      if (body != null)
                        SizedBox(
                          height: 16,
                        ),
                      //@@@@@@@@@@@@@//
                      Divider(),
                      SizedBox(
                        height: 4,
                      ),

                      KH_Bordered_Bottun(
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                        borderColor: Colors.transparent,
                        width: double.infinity,
                        title: buttonText ?? "OK",
                        margin: EdgeInsets.all(1),
                        isFilled: isFilledButton,
                        backGroundColor: isFilledButton == true
                            ? (buttonBackGroundColor ??
                                _theme.primaryColor.withOpacity(0.22))
                            : Colors.transparent,
                        elevation: 0,
                        textColor: buttonTextColor ?? _theme.primaryColor,
                      ),

                      //@@@@@@@@@@@@@//
                    ],
                  ),
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                ),
              ),
            ),
          ),
        );
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
      },
    );
    return (isButtonPressed == null) ? false : true;
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@          KH HUD            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static Future<bool> showKHprogressHUDwithIcon({
    required BuildContext context,
    required HudType hudType,
    int? durationInMilliSeconds,
    String? body,
    TextStyle? bodyTextStyle,
    bool isBodyColorfull = false,
    TextAlign textAlignment = TextAlign.center,
  }) async {
    final isTimeOver = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
        final _theme = Theme.of(context);
        final _KH_Colors = _theme.extension<KH_Colors>()!;
        final _mediaQuery = MediaQuery.of(context).size;
        String _imagePath = "assets/icons/hud/icons8-info_squared.png";
        Color? textColor = _KH_Colors.TitelsColor;
        if (hudType == HudType.success) {
          textColor = _KH_Colors.GreenColor;
          _imagePath = "assets/icons/hud/icons8-tick_box.png";
        } else if (hudType == HudType.warning) {
          textColor = Colors.orange[800];
          _imagePath = "assets/icons/hud/icons8-info_squared.png";
        } else if (hudType == HudType.errror) {
          textColor = _KH_Colors.RedColor;
          _imagePath = "assets/icons/hud/icons8-close_window.png";
        }
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
        Future.delayed(Duration(milliseconds: durationInMilliSeconds ?? 3000),
            () {
          Navigator.of(context).pop(true);
        });
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//

        return Center(
          child: Card(
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(18),
            // ),
            //@@@@@@@@@@@@@//
            //@@@@@@@@@@@@@//
            shape: SmoothRectangleBorder(
              borderRadius: SmoothBorderRadius(
                cornerRadius: 18,
                cornerSmoothing: 1,
              ),
            ),
            //@@@@@@@@@@@@@//
            //@@@@@@@@@@@@@//
            child: Container(
              constraints: BoxConstraints(
                  minWidth: 100,
                  maxWidth: MediaQuery.of(context).size.width / 1.5),
              // decoration: BoxDecoration(
              //   color: _theme.dialogBackgroundColor,
              //   borderRadius: BorderRadius.circular(18),
              // ),
              decoration: ShapeDecoration(
                color: _theme.dialogBackgroundColor,
                shape: SmoothRectangleBorder(
                  borderRadius: SmoothBorderRadius(
                    cornerRadius: 18,
                    cornerSmoothing: 1,
                  ),
                ),
              ),
              //@@@@@@@@@@@@@//
              //@@@@@@@@@@@@@//
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: IntrinsicHeight(
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //@@@@@@@@@@@@@//
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            fit: BoxFit.cover,
                            height: 55,
                            width: 55,
                            image: AssetImage(_imagePath),
                          )),
                      //@@@@@@@@@@@@@//
                      if (body != null)
                        SizedBox(
                          height: 3,
                        ),
                      if (body != null)
                        Text(
                          body,
                          textAlign: textAlignment,
                          style: bodyTextStyle ??
                              _theme.textTheme.bodyMedium?.copyWith(
                                color:
                                    isBodyColorfull == true ? textColor : null,
                              ),
                        ),
                      //@@@@@@@@@@@@@//
                    ],
                  ),
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                ),
              ),
            ),
          ),
        );
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
      },
    );
    return (isTimeOver == null) ? false : true;
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@      KH PROGRESS HUD       @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static showKHprogressHUDwithLoading({
    required BuildContext context,
    String? title,
    TextAlign textAlignment = TextAlign.center,
    double hudSize = 50,
    double hudThikness = 3,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        final _theme = Theme.of(context);
        final _KH_Colors = _theme.extension<KH_Colors>()!;
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//

        return Center(
          child: Card(
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(25),
            // ),
            //@@@@@@@@@@@@@//
            //@@@@@@@@@@@@@//
            shape: SmoothRectangleBorder(
              borderRadius: SmoothBorderRadius(
                cornerRadius: 25,
                cornerSmoothing: 1,
              ),
            ),
            //@@@@@@@@@@@@@//
            //@@@@@@@@@@@@@//
            child: Container(
              constraints: BoxConstraints(
                  minWidth: 100,
                  maxWidth: MediaQuery.of(context).size.width / 1.5),
              // decoration: BoxDecoration(
              //   color: _theme.dialogBackgroundColor,
              //   borderRadius: BorderRadius.circular(25),
              // ),
              decoration: ShapeDecoration(
                color: _theme.dialogBackgroundColor,
                shape: SmoothRectangleBorder(
                  borderRadius: SmoothBorderRadius(
                    cornerRadius: 25,
                    cornerSmoothing: 1,
                  ),
                ),
              ),
              //@@@@@@@@@@@@@//
              //@@@@@@@@@@@@@//
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: IntrinsicHeight(
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //@@@@@@@@@@@@@//
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SizedBox(
                          width: hudSize,
                          height: hudSize,
                          child: CircularProgressIndicator(
                            strokeWidth: hudThikness,
                          ),
                        ),
                      ),
                      //@@@@@@@@@@@@@//
                      if (title != null)
                        SizedBox(
                          height: 16,
                        ),
                      if (title != null)
                        Text(
                          title,
                          textAlign: textAlignment,
                        ),
                      //@@@@@@@@@@@@@//
                    ],
                  ),
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
                ),
              ),
            ),
          ),
        );
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
        //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
      },
    ).then((value) {
      KH_Helper.safePrint("this is when the loading is gone and finished");
    });
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@         SNACK BAR          @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  /// show a snack bar with dynamic values and colors

  static void showSnakBar({
    required GlobalKey<ScaffoldMessengerState> scaffoldKey,
    required String text,
    required bool isSuccess,
    TextStyle? textStyle,
    int? duration,
  }) {
    scaffoldKey.currentState?.hideCurrentSnackBar();
    scaffoldKey.currentState?.showSnackBar(
      SnackBar(
        content: Text(
          text,
          style: textStyle,
          textAlign: TextAlign.center,
        ),
        backgroundColor:
            isSuccess ? K_LIGHT_THEME_GREEN_COLOR : K_LIGHT_THEME_RED_COLOR,
        duration: Duration(seconds: duration ?? 3),
      ),
    );
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@         SNACK BAR          @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static void showSnakBarWithAction({
    required GlobalKey<ScaffoldMessengerState> scaffoldKey,
    required String text,
    required bool isSuccess,
    TextStyle? textStyle,
    TextAlign? textAlignment,
    int? duration,
    required String actionTitle,
    Color? actionTitleColor,
    TextStyle? actionTitleStyle,
    required Function action,
  }) {
    scaffoldKey.currentState?.hideCurrentSnackBar();
    scaffoldKey.currentState?.showSnackBar(SnackBar(
      content: Text(
        text,
        style: textStyle,
        textAlign: textAlignment ?? TextAlign.center,
      ),
      backgroundColor:
          isSuccess ? K_LIGHT_THEME_GREEN_COLOR : K_LIGHT_THEME_RED_COLOR,
      duration: Duration(seconds: duration ?? 3),
      action: SnackBarAction(
        label: actionTitle,
        textColor: actionTitleColor ?? K_LIGHT_THEME_BUTTONS_TEXT_COLOR,
        onPressed: action(),
      ),
    ));
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@         SNACK BAR          @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@        HOW TO USE          @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

/* 

onPressed: () async {

    final results = await KH_Alerts.showYesNoAlertDialog(
    context: context,
    title: S.of(context).alertTitle,
    body: S.of(context).alertBody,
    yesText: S.of(context).alertYes,
    noText: S.of(context).alertNo,
    );

    if (results == yesNoAlertsActions.yes) {
    KH_Helper.safePrint("USER PRESSED YES BABY");

    final isDone = await KH_Alerts.showKHprogressHUDwithIcon(
        context: context,
        hudType: HudType.success,
        body: "لقد أحسنت صنعا",
        isBodyColorfull: false,
        durationInMilliSeconds: 1000,
    );

    if (isDone) {
        final isDone2 = await KH_Alerts.showKHprogressHUDwithIcon(
        context: context,
        hudType: HudType.warning,
        body: "هذا تحذيرنا النهائي لك",
        isBodyColorfull: false,
        durationInMilliSeconds: 1000,
        );

        if (isDone2) {
        final isDone3 = await KH_Alerts.showKHprogressHUDwithIcon(
            context: context,
            hudType: HudType.errror,
            body: "انتهى الأمر ، سوف نفيزن على راسك يا كلبة",
            durationInMilliSeconds: 1000,
            isBodyColorfull: false,
        );

        if (isDone3) {
            KH_Alerts.showKHprogressHUDwithLoading(
            context: context,
            title: "سوف تبقى عالقا هنا للأبد الآن يا صرماية الصرامي !",
            hudSize: 66,
            hudThikness: 5.5,
            );

            Future.delayed(Duration(seconds: 4), () {
            Navigator.of(context).pop();
            KH_Alerts.showKHprogressHUDwithIcon(
                context: context,
                hudType: HudType.success,
                body: "خلاص سامحناك المعاملة عند الله",
                durationInMilliSeconds: 2000,
            );
            });
        }
        }
    }
    } else {
    KH_Helper.safePrint("USER PRESSED NO BABY");

    final results = await KH_Alerts.showMessageBoxDialog(
        context: context,
        title: S.of(context).alertTitle,
        body: S.of(context).alertBody,
        buttonText: S.of(context).alertYes,
    );

    KH_Helper.safePrint(results);

    if (results == true) {
        
        final results2 = await KH_Alerts.showMultiOptionsDialog(
        context: context,
        title:
            "الأليرت المتعدد", // "هذا الأليرت متعدد الأزار ، فيه ٣ خيارات متعددة و متنوعة وملونة", // "أليرت المتعدد",
        body:
            "هذا الأليرت متعدد الأزار ، فيه ٣ خيارات متعددة و متنوعة وملونة",
        );
        KH_Helper.safePrint(results2.toString());
        if (results2 == multiOptionsActions.option1Action) {
        KH_Helper.safePrint("user chose option 1");
        KH_Alerts.showKHprogressHUDwithIcon(
            context: context,
            hudType: HudType.success,
            body: "اخترت الخيار الأول",
            durationInMilliSeconds: 1000,
        );
        } else if (results2 == multiOptionsActions.option2Action) {
        KH_Helper.safePrint("user chose option 2");
        KH_Alerts.showKHprogressHUDwithIcon(
            context: context,
            hudType: HudType.warning,
            body: "اخترت الخيار الثاني",
            durationInMilliSeconds: 1000,
        );
        }else{
        KH_Helper.safePrint("user chose option 3");
        KH_Alerts.showKHprogressHUDwithIcon(
            context: context,
            hudType: HudType.errror,
            body: "اخترت الخيار الثالث",
            durationInMilliSeconds: 1000,
        );
        }

    }
    }
}

*/

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@        HOW TO USE          @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
