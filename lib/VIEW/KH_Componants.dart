// ignore_for_file: camel_case_types, non_constant_identifier_names, body_might_complete_normally_nullable, use_key_in_widget_constructors, prefer_const_constructors, no_leading_underscores_for_local_identifiers, unnecessary_null_in_if_null_operators, sort_child_properties_last, prefer_if_null_operators, prefer_const_constructors_in_immutables

import 'dart:ui';

import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled12/MODELS/CLASESS/KH_Helper.dart';
import 'dart:ui' as ui;

import 'package:untitled12/MODELS/CLASESS/KH_Responsivness.dart';
import 'package:untitled12/MODELS/CLASESS/KH_Themes.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@          BackBtn           @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class KH_BackBtn extends StatelessWidget {
  const KH_BackBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(1),
          child: IconButton(
              icon: Icon(
                Icons.arrow_back_outlined,
                // color: _theme.errorColor,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              }),
        ),
        Spacer(),
      ],
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@      ExplanationText       @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

// class ExplanationText extends StatelessWidget {

//   final String text;
//   final TextStyle textStyle;
//   final TextAlign textAlign;

//   ExplanationText({@required this.text, this.textStyle, this.textAlign});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Container(
//         width: double.infinity,
//         child: Text(
//           text,
//           style: textStyle ?? K_TEXT_STYLE,
//           textAlign: textAlign ?? TextAlign.center,
//         ),
//       ),
//     );
//   }
// }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@          KH_Title          @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class KH_App_Title extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final double? virticalPadding;
  final double? horezontalPadding;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? titleColor;

  KH_App_Title({
    required this.text,
    this.textStyle,
    this.textAlign,
    this.horezontalPadding,
    this.virticalPadding,
    this.fontSize,
    this.fontWeight,
    this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: virticalPadding ?? 16,
        horizontal: horezontalPadding ?? 16,
      ),
      child: Container(
        width: double.infinity,
        child: Text(
          text,
          style: textStyle ??
              Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontSize: fontSize ?? 18,
                    fontWeight: fontWeight ?? FontWeight.w600,
                    color: titleColor,
                  ),
          textAlign: textAlign ?? TextAlign.start,
        ),
      ),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@       LogoContainer        @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class LogoContainer extends StatelessWidget {
  final String imagePath;
  final double height;
  final double width;
  final Color? bgColor;
  final Color? imageColor;

  LogoContainer({
    required this.imagePath,
    required this.height,
    required this.width,
    this.bgColor,
    this.imageColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      color: bgColor ?? Colors.transparent,
      child: Center(
        child: Container(
          // color: Colors.red,
          height: height,
          width: width,
          child: Image(
            image: AssetImage(imagePath),
            fit: BoxFit.contain,
            color: imageColor,
          ),
        ),
      ),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@       KH__TextField        @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class KH_TextField extends StatelessWidget {
  final TextEditingController? textFieldsController;
  final Key? theKey;
  final bool withInitialValue;
  final String? initialValue;
  final TextInputType? keyboardType;
  final String? placeHolder;
  final double? borderRadius;
  final Color? borderColor;
  final double? borderWidth;
  final TextInputAction? inputActionType;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final bool? isBoldStyle;
  final bool? isBoldLabl;

  final Function(String)? onChanging;
  final Function(String)? onSubmitting;

  final VoidCallback? onTapping;
  final FocusNode? theFocusNode;
  final bool isAutoFocus;
  final bool? isEnabaled;
  final TextAlign? textAlignment;
  final String? lablTitleText;
  final TextStyle? lablTitleTextStyle;
  final EdgeInsetsGeometry? padding;
  final int? maxCharecters;
  final int? maxLines;
  final MaxLengthEnforcement maxLenghtEnforcment;
  final bool isReadOnly;
  final bool isSecureText;
  final TextCapitalization capitalization;
  final TextDirection? theTextDirection;
  final bool? isLTR;
  final bool? isFilled;
  final Color? fillColor;
  final FloatingLabelBehavior? titleLableShowingBehavier;
  final bool? showCounter;
  final double? virticalHeight;
  final double? horizontalPadding;
  final double? rightPadding;
  final double? leftPadding;
  final bool? onlyAllowNumbers;
  final Widget? leadingIconOrWidget;
  final Widget? leadingInnerPrefixIconOrWidget;
  final Widget? trailingInnerPrefixIconOrWidget;

  KH_TextField({
    this.textFieldsController,
    this.theKey,
    this.withInitialValue = false,
    this.initialValue,
    this.keyboardType,
    this.placeHolder,
    this.borderRadius,
    this.borderColor,
    this.borderWidth,
    this.inputActionType,
    this.textStyle,
    this.hintStyle,
    this.isBoldStyle,
    this.isBoldLabl,
    this.onChanging,
    this.onSubmitting,
    this.onTapping,
    this.theFocusNode,
    this.isAutoFocus = false,
    this.isEnabaled = true,
    this.textAlignment,
    this.lablTitleText,
    this.lablTitleTextStyle,
    this.padding,
    this.maxCharecters,
    this.maxLines = 1,
    this.maxLenghtEnforcment = MaxLengthEnforcement.none,
    this.isReadOnly = false,
    this.isSecureText = false,
    this.capitalization = TextCapitalization.none,
    this.theTextDirection,
    this.isLTR,
    this.isFilled,
    this.fillColor,
    this.titleLableShowingBehavier = FloatingLabelBehavior.always,
    this.showCounter = false,
    this.virticalHeight,
    this.horizontalPadding,
    this.rightPadding,
    this.leftPadding,
    this.onlyAllowNumbers = false,
    this.leadingIconOrWidget,
    this.leadingInnerPrefixIconOrWidget,
    this.trailingInnerPrefixIconOrWidget,
  });

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Padding(
      padding: padding ?? const EdgeInsets.all(16.0),
      child: TextField(
        key: theKey,
        //@@@@@@@@@@@//
        enabled: isEnabaled,
        //@@@@@@@@@@//
        controller: (initialValue == null)
            ? (textFieldsController)
            : (textFieldsController?..text = initialValue ?? ""),
        //  initialValue == null ? textFieldsController : textFieldsController?..text = initialValue ?? "",
        // textFieldsController,  // ?..text = initialValue ?? "",

        //@@@@@@@@@@//
        textAlignVertical: TextAlignVertical.center,
        textAlign: textAlignment ?? TextAlign.center,
        textDirection:
            theTextDirection ?? (isLTR == true ? ui.TextDirection.ltr : null),
        textInputAction: inputActionType ?? TextInputAction.done,
        autocorrect: false,
        keyboardType: keyboardType ?? TextInputType.text,
        inputFormatters: onlyAllowNumbers == true
            ? [FilteringTextInputFormatter.allow(RegExp("[0-9]"))]
            : null,
        cursorColor: _theme.primaryColor,
        style: textStyle ??
            _theme.textTheme.bodyMedium?.copyWith(
              fontWeight:
                  isBoldStyle == true ? FontWeight.bold : FontWeight.normal,
            ),
        //@@@@@@@@@@@//
        // expands: true,
        // maxLines: null,
        // minLines: null,
        //@@@@@@@@@@@//
        maxLines: maxLines,
        maxLength: maxCharecters,
        maxLengthEnforcement: maxLenghtEnforcment,
        readOnly: isReadOnly,
        obscureText: isSecureText,
        obscuringCharacter: KH_Responsivenes.isWeb() ? "#" : "●",
        textCapitalization: capitalization,
        toolbarOptions: ToolbarOptions(
          cut: true,
          copy: true,
          selectAll: true,
          paste: true,
        ),
        //@@@@@@@@@@@//
        focusNode: theFocusNode,
        autofocus: isAutoFocus,
        //@@@@@@@@@@@//
        onChanged: onChanging != null
            ? onChanging
            : (value) {
                KH_Helper.safePrint(value);
              },
        //@@@@@@@@@@@//
        onSubmitted: onSubmitting != null
            ? onSubmitting
            : (value) {
                KH_Helper.safePrint(value);
              },
        //@@@@@@@@@@@//
        onTap: onTapping != null
            ? onTapping
            : () {
                KH_Helper.safePrint("user tapped on a text field");
              },
        //@@@@@@@@@@@//
        decoration: InputDecoration(
          filled: isFilled,
          fillColor: fillColor,
          floatingLabelBehavior: titleLableShowingBehavier,
          counterText: showCounter == true ? null : "",
          counterStyle: lablTitleTextStyle ??
              TextStyle(
                fontSize: 14,
                fontWeight:
                    isBoldLabl == true ? FontWeight.bold : FontWeight.normal,
                color: _theme.hintColor,
              ),
          //@@@@@@@@@@@//
          // contentPadding: EdgeInsets.all(10.0),
          // contentPadding: EdgeInsets.symmetric(horizontal: horizontalPadding ?? 45, vertical: virticalHeight ?? 20),
          contentPadding: EdgeInsets.only(
            top: virticalHeight ?? 20,
            bottom: virticalHeight ?? 20,
            right: rightPadding ?? 45,
            left: leftPadding ?? 45,
          ),
          //@@@@@@@@@@@//
          isDense: true,
          hintText: placeHolder,
          hintStyle: hintStyle ??
              _theme.textTheme.labelLarge?.copyWith(
                fontSize: 16,
                fontWeight:
                    isBoldStyle == true ? FontWeight.bold : FontWeight.normal,
              ),
          labelText: lablTitleText,
          labelStyle: lablTitleTextStyle ??
              TextStyle(
                fontSize: 16,
                fontWeight:
                    isBoldLabl == true ? FontWeight.bold : FontWeight.normal,
                color: _theme.hintColor,
              ),
          //@@@@@@@@@@@//
          icon: leadingIconOrWidget,
          prefixIcon: leadingInnerPrefixIconOrWidget,
          suffixIcon: trailingInnerPrefixIconOrWidget,
          //@@@@@@@@@@@//
          border: OutlineInputBorder(
            gapPadding: 10,
            // borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 8)),
            borderRadius: SmoothBorderRadius(
              cornerRadius: borderRadius ?? 8,
              cornerSmoothing: 1,
            ),
            borderSide: BorderSide(
              color: borderColor ?? _theme.hintColor,
              width: borderWidth ?? 1,
            ),
          ),
          //@@@@@@@@@@@//
          enabledBorder: OutlineInputBorder(
            gapPadding: 10,
            // borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 8)),
            borderRadius: SmoothBorderRadius(
              cornerRadius: borderRadius ?? 8,
              cornerSmoothing: 1,
            ),
            borderSide: BorderSide(
              color: borderColor ?? _theme.hintColor,
              width: borderWidth ?? 1,
            ),
          ),
          //@@@@@@@@@@@//
          focusedBorder: OutlineInputBorder(
            gapPadding: 10,
            // borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 8)),
            borderRadius: SmoothBorderRadius(
              cornerRadius: borderRadius ?? 8,
              cornerSmoothing: 1,
            ),
            borderSide: BorderSide(
              color: borderColor ?? _theme.hintColor,
              width: borderWidth ?? 1,
            ),
          ),
          //@@@@@@@@@@@//
          errorBorder: OutlineInputBorder(
            gapPadding: 10,
            // borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 8)),
            borderRadius: SmoothBorderRadius(
              cornerRadius: borderRadius ?? 8,
              cornerSmoothing: 1,
            ),
            borderSide: BorderSide(
              color: borderColor ?? _theme.colorScheme.error,
              width: borderWidth ?? 1,
            ),
            //@@@@@@@@@@@//
          ),
        ),
      ),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@     KH__TextFormField      @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class KH_FormTextField extends StatelessWidget {
  final TextEditingController? textFieldsController;
  final TextInputType? keyboardType;
  final String? placeHolder;
  final double? borderRadius;
  final Color? borderColor;
  final double? borderWidth;
  final TextInputAction? inputActionType;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final bool? isBoldStyle;
  final bool? isBoldLabl;

  final Function(String)? onChanging;
  final Function(String)? onSubmitting;
  final Function(String?)? onSaving;
  final String? Function(String?)? onValidating;
  final VoidCallback? onTapping;

  final FocusNode? theFocusNode;
  final bool isAutoFocus;
  final bool? isEnabaled;
  final TextAlign? textAlignment;
  final String? lablTitleText;
  final TextStyle? lablTitleTextStyle;
  final EdgeInsetsGeometry? padding;
  final int? maxCharecters;
  final int? maxLines;
  final MaxLengthEnforcement maxLenghtEnforcment;
  final bool isReadOnly;
  final bool isSecureText;
  final TextCapitalization capitalization;
  final TextDirection? theTextDirection;
  final bool? isLTR;
  final bool? isFilled;
  final Color? fillColor;
  final FloatingLabelBehavior? titleLableShowingBehavier;
  final bool? showCounter;
  final double? virticalHeight;
  final double? horizontalPadding;
  final double? rightPadding;
  final double? leftPadding;
  final bool? onlyAllowNumbers;
  final Widget? leadingIconOrWidget;
  final Widget? trailingIconOrWidget;
  final Widget? leadingInnerPrefixIconOrWidget;
  final Widget? trailingInnerPrefixIconOrWidget;

  KH_FormTextField({
    this.textFieldsController,
    this.keyboardType,
    this.placeHolder,
    this.borderRadius,
    this.borderColor,
    this.borderWidth,
    this.inputActionType,
    this.textStyle,
    this.hintStyle,
    this.isBoldStyle,
    this.isBoldLabl,
    this.onChanging,
    this.onSubmitting,
    this.onSaving,
    this.onValidating,
    this.onTapping,
    this.theFocusNode,
    this.isAutoFocus = false,
    this.isEnabaled = true,
    this.textAlignment,
    this.lablTitleText,
    this.lablTitleTextStyle,
    this.padding,
    this.maxCharecters,
    this.maxLines = 1,
    this.maxLenghtEnforcment = MaxLengthEnforcement.none,
    this.isReadOnly = false,
    this.isSecureText = false,
    this.capitalization = TextCapitalization.none,
    this.theTextDirection,
    this.isLTR,
    this.isFilled,
    this.fillColor,
    this.titleLableShowingBehavier = FloatingLabelBehavior.always,
    this.showCounter = false,
    this.virticalHeight,
    this.horizontalPadding,
    this.rightPadding,
    this.leftPadding,
    this.onlyAllowNumbers = false,
    this.leadingIconOrWidget,
    this.trailingIconOrWidget,
    this.leadingInnerPrefixIconOrWidget,
    this.trailingInnerPrefixIconOrWidget,
  });

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Padding(
      padding: padding ?? const EdgeInsets.all(6.0),
      child: TextFormField(
        //@@@@@@@@@@@//
        enabled: isEnabaled,
        controller: textFieldsController,
        textAlignVertical: TextAlignVertical.center,
        textAlign: textAlignment ?? TextAlign.center,
        textDirection:
            theTextDirection ?? (isLTR == true ? ui.TextDirection.ltr : null),
        textInputAction: inputActionType ?? TextInputAction.done,
        autocorrect: false,
        keyboardType: keyboardType ?? TextInputType.text,
        inputFormatters: onlyAllowNumbers == true
            ? [FilteringTextInputFormatter.allow(RegExp("[0-9]"))]
            : null,
        cursorColor: _theme.primaryColor,
        style: textStyle ??
            _theme.textTheme.bodyMedium?.copyWith(
              fontWeight:
                  isBoldStyle == true ? FontWeight.bold : FontWeight.normal,
            ),
        //@@@@@@@@@@@//
        // expands: true,
        // maxLines: null,
        // minLines: null,
        //@@@@@@@@@@@//
        maxLength: maxCharecters,
        maxLines: maxLines,
        maxLengthEnforcement: maxLenghtEnforcment,
        readOnly: isReadOnly,
        obscureText: isSecureText,
        obscuringCharacter: KH_Responsivenes.isWeb() ? "#" : "●",
        textCapitalization: capitalization,
        toolbarOptions: ToolbarOptions(
          cut: true,
          copy: true,
          selectAll: true,
          paste: true,
        ),
        //@@@@@@@@@@@//
        focusNode: theFocusNode,
        autofocus: isAutoFocus,
        //@@@@@@@@@@@//
        onChanged: onChanging != null
            ? onChanging
            : (value) {
                KH_Helper.safePrint(value);
              },
        //@@@@@@@@@@@//
        onTap: onTapping != null
            ? onTapping
            : () {
                KH_Helper.safePrint("user tapped on a text field");
              },
        //@@@@@@@@@@@//
        onFieldSubmitted: onSubmitting != null
            ? onSubmitting
            : (value) {
                KH_Helper.safePrint("Submitting : $value");
              },
        //@@@@@@@@@@@//
        onSaved: onSaving != null
            ? onSaving
            : (value) {
                KH_Helper.safePrint("Saving : $value");
              },
        //@@@@@@@@@@@//
        validator: onValidating != null
            ? onValidating
            : (value) {
                KH_Helper.safePrint("Validating : $value");
              },
        //@@@@@@@@@@@//
        decoration: InputDecoration(
          filled: isFilled,
          fillColor: fillColor,
          floatingLabelBehavior: titleLableShowingBehavier,
          counterText: showCounter == true ? null : "",
          //@@@@@@@@@@@//
          // contentPadding: EdgeInsets.all(10.0),
          // contentPadding: EdgeInsets.symmetric(horizontal: horizontalPadding ?? 45, vertical: virticalHeight ?? 20),
          contentPadding: EdgeInsets.only(
            top: virticalHeight ?? 20,
            bottom: virticalHeight ?? 20,
            right: rightPadding ?? 45,
            left: leftPadding ?? 45,
          ),
          //@@@@@@@@@@@//
          isDense: true,
          hintText: placeHolder,
          hintStyle: hintStyle ??
              _theme.textTheme.labelLarge?.copyWith(
                fontSize: 16,
                fontWeight:
                    isBoldStyle == true ? FontWeight.bold : FontWeight.normal,
              ),
          labelText: lablTitleText,
          labelStyle: lablTitleTextStyle ??
              TextStyle(
                fontSize: 16,
                fontWeight:
                    isBoldLabl == true ? FontWeight.bold : FontWeight.normal,
                color: _theme.hintColor,
              ),
          //@@@@@@@@@@@//
          icon: leadingIconOrWidget,
          suffix: trailingIconOrWidget,
          prefixIcon: leadingInnerPrefixIconOrWidget,
          suffixIcon: trailingInnerPrefixIconOrWidget,
          //@@@@@@@@@@@//
          border: OutlineInputBorder(
            gapPadding: 10,
            // borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 8)),
            borderRadius: SmoothBorderRadius(
              cornerRadius: borderRadius ?? 8,
              cornerSmoothing: 1,
            ),
            borderSide: BorderSide(
              color: borderColor ?? _theme.hintColor,
              width: borderWidth ?? 1,
            ),
          ),
          //@@@@@@@@@@@//
          enabledBorder: OutlineInputBorder(
            gapPadding: 10,
            // borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 8)),
            borderRadius: SmoothBorderRadius(
              cornerRadius: borderRadius ?? 8,
              cornerSmoothing: 1,
            ),
            borderSide: BorderSide(
              color: borderColor ?? _theme.hintColor,
              width: borderWidth ?? 1,
            ),
          ),
          //@@@@@@@@@@@//
          focusedBorder: OutlineInputBorder(
            gapPadding: 10,
            // borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 8)),
            borderRadius: SmoothBorderRadius(
              cornerRadius: borderRadius ?? 8,
              cornerSmoothing: 1,
            ),
            borderSide: BorderSide(
              color: borderColor ?? _theme.hintColor,
              width: borderWidth ?? 1,
            ),
          ),
          //@@@@@@@@@@@//
          errorBorder: OutlineInputBorder(
            gapPadding: 10,
            // borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 8)),
            borderRadius: SmoothBorderRadius(
              cornerRadius: borderRadius ?? 8,
              cornerSmoothing: 1,
            ),
            borderSide: BorderSide(
              color: borderColor ?? _theme.colorScheme.error,
              // color: _theme.errorColor,
              width: borderWidth ?? 1,
            ),
          ),
          //@@@@@@@@@@@//
        ),
      ),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@      KH_Filled_Bottun      @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class KH_Filled_Bottun extends StatelessWidget {
  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final Color? bgColor;
  final Color? borderColor;
  final Color? textColor;
  final double? cornerRadius;
  final TextStyle? titleTextStyle;
  final TextStyle? chiledTextStyle;
  final String? title;
  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final bool? isFilled;
  final double? borderWidth;
  final double? elevation;
  final Color? shadowColor;
  final bool isButtonCompleteOval;
  final TextAlign? titleTextAlignment;
  final Color? splashColor;

  KH_Filled_Bottun({
    required this.onPressed,
    this.height,
    this.width,
    this.bgColor,
    this.textColor,
    this.borderColor,
    this.cornerRadius,
    this.titleTextStyle,
    this.chiledTextStyle,
    this.title,
    this.child,
    this.margin,
    this.isFilled = true,
    this.borderWidth,
    this.elevation,
    this.shadowColor,
    this.isButtonCompleteOval = false,
    this.titleTextAlignment = TextAlign.center,
    this.splashColor,
  });

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Container(
      margin: margin ?? const EdgeInsets.all(16),
      height: height ?? 50,
      width: width,
      // decoration: BoxDecoration(
      //   color: bgColor ?? K_MAIN_COLOR,
      //   borderRadius: BorderRadius.circular(cornerRadius ?? 8),
      // ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // ========== //
          backgroundColor: isFilled == true
              ? (bgColor ?? _theme.primaryColor)
              : Colors.transparent,
          // ========== //
          foregroundColor: splashColor ?? _theme.cardColor,
          // isFilled == true
          //     ? (textColor)
          //     : (textColor ?? _theme.primaryColor),
          // ========== //
          surfaceTintColor: _theme.cardColor,

          // ========== //
          // elevation: isFilled == true ? 3 : 0,
          // shadowColor: isFilled == true ? null : Colors.transparent,
          elevation: isFilled == true ? (elevation ?? 3) : 0,
          shadowColor: shadowColor ?? _theme.primaryColor.withOpacity(0.5),
          // ========== //
          side: BorderSide(
            color: isFilled == true
                ? (borderColor ?? _theme.primaryColor)
                : (borderColor ?? Colors.transparent),
            style: BorderStyle.solid,
            width: isFilled == true ? (borderWidth ?? 0) : (borderWidth ?? 1),
          ),
          // ========== //
          shape: isButtonCompleteOval == false
              ? ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(cornerRadius ?? 20),
                )
              : RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(cornerRadius ?? 20),
                ),
          // ========== //
          textStyle: titleTextStyle ??
              _theme.textTheme.titleSmall?.copyWith(
                color: isFilled == true
                    ? (textColor ?? Colors.white)
                    : (textColor ?? _theme.primaryColor),
              ),
          // ========== //
        ),
        //@@@@@@@@@@@@@@//
        onPressed: onPressed,
        //@@@@@@@@@@@@@@//
        child: child ??
            Text(
              title ?? "KH BUTTON",
              textAlign: titleTextAlignment,
              style: chiledTextStyle ??
                  _theme.textTheme.titleSmall?.copyWith(
                    color: isFilled == true
                        ? (textColor ?? Colors.white)
                        : (textColor ?? _theme.primaryColor),
                  ),
            ),
        //@@@@@@@@@@@@@@//
      ),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@     KH_Gradiant_Bottun     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class KH_Gradiant_Bottun extends StatelessWidget {
  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final Color? borderColor;
  final Color? textColor;
  final double? cornerRadius;
  final TextStyle? titleTextStyle;
  final TextStyle? chiledTextStyle;
  final String? title;
  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final double? borderWidth;
  final double? elevation;
  final Color? shadowColor;
  final bool isButtonCompleteOval;
  final TextAlign? titleTextAlignment;
  final List<Color>? gradientColors;

  KH_Gradiant_Bottun({
    required this.onPressed,
    this.height,
    this.width,
    this.textColor,
    this.borderColor,
    this.cornerRadius,
    this.titleTextStyle,
    this.chiledTextStyle,
    this.title,
    this.child,
    this.margin,
    this.borderWidth,
    this.elevation,
    this.shadowColor,
    this.isButtonCompleteOval = false,
    this.titleTextAlignment = TextAlign.center,
    this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    //@@@@@@@@@@@@@@//
    //@@@@@@@@@@@@@@//
    final _theme = Theme.of(context);
    //@@@@@@@@@@@@@@//
    //@@@@@@@@@@@@@@//
    return Container(
      margin: margin ?? const EdgeInsets.all(16),
      height: height ?? 50,
      width: width,
      decoration: ShapeDecoration(
        shape: SmoothRectangleBorder(
          borderRadius: SmoothBorderRadius(
            cornerRadius: cornerRadius ?? 8,
            cornerSmoothing: 1,
          ),
        ),
        gradient: LinearGradient(
          colors: gradientColors ??
              [
                _theme.primaryColor,
                _theme.primaryColor.withOpacity(0.7),
              ],
        ),
      ),
      //@@@@@@@@@@@@@@//
      //@@@@@@@@@@@@@@//
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // ========== //
          backgroundColor: Colors.transparent,
          // ========== //
          elevation: 0,
          shadowColor: Colors.transparent,
          // ========== //
          side: BorderSide(
            color: (borderColor ?? Colors.transparent),
            style: BorderStyle.solid,
            width: (borderWidth ?? 0),
          ),
          // ========== //
          shape: isButtonCompleteOval == false
              ? ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(cornerRadius ?? 20),
                )
              : RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(cornerRadius ?? 20),
                ),
          // ========== //
          textStyle: titleTextStyle ??
              _theme.textTheme.titleSmall?.copyWith(
                color: (textColor ?? Colors.white),
              ),
          // ========== //
        ),
        //@@@@@@@@@@@@@@//
        onPressed: onPressed,
        //@@@@@@@@@@@@@@//
        child: child ??
            Text(
              title ?? "KH BUTTON",
              textAlign: titleTextAlignment,
              style: chiledTextStyle ??
                  _theme.textTheme.titleSmall?.copyWith(
                    color: (textColor ?? Colors.white),
                  ),
            ),
        //@@@@@@@@@@@@@@//
      ),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@     KH_Bordered_Bottun     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class KH_Bordered_Bottun extends StatelessWidget {
  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final Color? borderColor;
  final Color? textColor;
  final double? cornerRadius;
  final TextStyle? titleTextStyle;
  final TextStyle? chiledTextStyle;
  final String? title;
  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final bool? isFilled;
  final Color? backGroundColor;
  final double? borderWidth;
  final double? elevation;
  final bool isButtonCompleteOval;
  final Color? shadowColor;
  final TextAlign? titleTextAlignment;

  KH_Bordered_Bottun({
    required this.onPressed,
    this.height,
    this.width,
    this.borderColor,
    this.textColor,
    this.cornerRadius,
    this.titleTextStyle,
    this.chiledTextStyle,
    this.title,
    this.child,
    this.margin,
    this.isFilled = false,
    this.backGroundColor,
    this.borderWidth,
    this.elevation,
    this.isButtonCompleteOval = false,
    this.shadowColor,
    this.titleTextAlignment = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Container(
      margin: margin ?? const EdgeInsets.all(16),
      height: height ?? 50,
      width: width,
      // decoration: BoxDecoration(
      //   color: bgColor ?? K_MAIN_COLOR,
      //   borderRadius: BorderRadius.circular(cornerRadius ?? 8),
      // ),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          // ========== //
          // ========== //
          foregroundColor: isFilled == true
              ? (textColor ?? K_LIGHT_THEME_BUTTONS_TEXT_COLOR)
              : (textColor ?? _theme.primaryColor),
          // ========== //
          backgroundColor: isFilled == true
              ? (backGroundColor ?? _theme.primaryColor)
              : null,
          // ========== //
          elevation: isFilled == true ? (elevation ?? 3) : null,
          shadowColor: shadowColor,
          // ========== //
          // ========== //
          side: BorderSide(
            color: borderColor ?? _theme.primaryColor,
            style: BorderStyle.solid,
            width: borderWidth ?? 1,
          ),
          // ========== //
          shape: isButtonCompleteOval == false
              ? ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(cornerRadius ?? 20),
                )
              : RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(cornerRadius ?? 20),
                ),
          // ========== //
          textStyle: titleTextStyle ??
              _theme.textTheme.titleSmall?.copyWith(
                color: isFilled == true
                    ? (textColor ?? K_LIGHT_THEME_BUTTONS_TEXT_COLOR)
                    : (textColor ?? _theme.primaryColor),
              ),
          // ========== //
        ),
        //@@@@@@@@@@@@@@//
        onPressed: onPressed,
        //@@@@@@@@@@@@@@//
        child: child ??
            Text(
              title ?? "KH BUTTON",
              textAlign: titleTextAlignment,
              style: chiledTextStyle ??
                  _theme.textTheme.titleSmall?.copyWith(
                    color: isFilled == true
                        ? (textColor ?? K_LIGHT_THEME_BUTTONS_TEXT_COLOR)
                        : (textColor ?? _theme.primaryColor),
                  ),
            ),
        //@@@@@@@@@@@@@@//
      ),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@      Stretchy Header       @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class StretchyHeader extends StatelessWidget {
  final double? height;
  final Color? backGroundColor;
  final bool? isFaded;
  final String? title;
  final TextStyle? titleStyle;
  final String? imagePath;
  final SliverChildDelegate sliverChildListDelegate;

  StretchyHeader({
    this.height,
    this.backGroundColor,
    this.isFaded = false,
    this.title,
    this.titleStyle,
    this.imagePath,
    required this.sliverChildListDelegate,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          backgroundColor: backGroundColor,
          expandedHeight: height ?? 350,
          stretchTriggerOffset: 200,
          stretch: true,
          // onStretchTrigger: () {
          //   KH_Helper.safePrint('app bar is stretched');
          //   return ;
          // },
          //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
          //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              title ?? "",
              style: titleStyle,
            ),
            centerTitle: true,
            //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
            //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
            stretchModes: const [
              StretchMode.zoomBackground,
              StretchMode.fadeTitle,
              StretchMode.blurBackground,
            ],
            //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
            //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
            background: Stack(
              fit: StackFit.expand,
              // overflow: Overflow.visible,
              clipBehavior: Clip.none,

              children: [
                //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
                //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
                Image.asset(
                  imagePath ?? "",
                  fit: BoxFit.cover,
                ),
                //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
                //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
                isFaded == true
                    ? const DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.0, 0.5),
                            end: Alignment(0.0, 0.0),
                            colors: <Color>[
                              Color(0x60000000),
                              Color(0x00000000),
                            ],
                          ),
                        ),
                      )
                    : const DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.0, 0.5),
                            end: Alignment(0.0, 0.0),
                            colors: <Color>[
                              Color(0x00000000),
                              Color(0x00000000),
                            ],
                          ),
                        ),
                      ),
                //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
                //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
              ],
            ),
          ),
        ),
        //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
        //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
        SliverList(
          delegate: sliverChildListDelegate,
        ),
        //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
        //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
      ],
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@       KH_ShadowCard        @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class KH_ShadowCard extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? bgColor;
  final bool? addBorderShadow;
  final bool? addShadow;
  final double? innerPadding;
  final double? innerPaddingvertical;
  final double? outsideMargin;
  final bool? isShadowColored;
  final bool? isGradiant;

  const KH_ShadowCard({
    required this.child,
    this.width,
    this.height,
    this.borderRadius,
    this.bgColor,
    this.addBorderShadow = false,
    this.addShadow = true,
    this.innerPadding,
    this.outsideMargin,
    this.isShadowColored = false,
    this.isGradiant = false,
    this.innerPaddingvertical,
  });

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _KH_Colors = _theme.extension<KH_Colors>()!;

    return Container(
      width: width ?? null,
      height: height ?? null,
      padding: EdgeInsets.symmetric(
          horizontal: innerPadding ?? 0, vertical: innerPaddingvertical ?? 0),
      margin: EdgeInsets.symmetric(horizontal: outsideMargin ?? 16),
      child: child,

      //@@@@@@@@@@@@//
      //@@@@@@@@@@@@//
      // decoration: BoxDecoration(
      //   color: bgColor ?? _KH_Colors.CardColor,
      //   borderRadius: BorderRadius.circular(borderRadius ?? 16.0),

      //   // shape: SmoothRectangleBorder(
      //   //   borderRadius: SmoothBorderRadius(
      //   //     cornerRadius: 10,
      //   //     cornerSmoothing: 0.5,
      //   //   ),
      //   // ),

      //   // shape: BoxShape.rectangle,
      //   boxShadow: [
      //     if (addBorderShadow == true)
      //       BoxShadow(
      //         color: _KH_Colors.SubTitelsColor.withOpacity(0.5),
      //         spreadRadius: 0.5,
      //         blurRadius: 0.5,
      //         offset: Offset(0, 0), // changes position of shadow
      //       ),
      //     if (addShadow == true)
      //       BoxShadow(
      //         color: _KH_Colors.CardShadowColor,
      //         // KH_Helper.isDarkModeOn(context: context) == true
      //         //     ? Colors.transparent
      //         //     : Theme.of(context).hintColor.withOpacity(
      //         //           0.2,
      //         //         ),
      //         spreadRadius: 3,
      //         blurRadius: 16,
      //         offset: Offset(0, 5), // changes position of shadow
      //       ),
      //   ],
      // ),
      //@@@@@@@@@@@@//
      //@@@@@@@@@@@@//
      decoration: ShapeDecoration(
        color: (isGradiant == true) ? null : (bgColor ?? _KH_Colors.CardColor),
        shape: SmoothRectangleBorder(
          borderRadius: SmoothBorderRadius(
            cornerRadius: borderRadius ?? 16,
            cornerSmoothing: 1,
          ),
        ),
        //@@@@@@@@@@@@//
        //@@@@@@@@@@@@//
        shadows: [
          if (addBorderShadow == true)
            BoxShadow(
              color: _KH_Colors.SubTitelsColor.withOpacity(0.5),
              spreadRadius: 0.5,
              blurRadius: 0.5,
              offset: Offset(0, 0), // changes position of shadow
            ),
          if (addShadow == true)
            BoxShadow(
              color: isShadowColored == true
                  ? _theme.primaryColor.withOpacity(0.04)
                  : _KH_Colors.CardShadowColor,
              // KH_Helper.isDarkModeOn(context: context) == true
              //     ? Colors.transparent
              //     : Theme.of(context).hintColor.withOpacity(
              //           0.2,
              //         ),
              spreadRadius: 3,
              blurRadius: 16,
              offset: Offset(0, 5), // changes position of shadow
            ),
        ],
        //@@@@@@@@@@@@//
        //@@@@@@@@@@@@//
      ),

      //@@@@@@@@@@@@//
      //@@@@@@@@@@@@//
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@      KH_GradiantCard       @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class KH_GradiantCard extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final double? borderRadius;
  final bool? addBorderShadow;
  final bool? addShadow;
  final double? innerPadding;
  final double? outsideMargin;
  final bool? isCircleGradiant;
  final List<Color>? gradientColors;
  final double? spreadRadius;
  final double? blurRadius;
  final double? offset;
  final Color? shadowColor;

  const KH_GradiantCard({
    required this.child,
    this.width,
    this.height,
    this.borderRadius,
    this.addBorderShadow = false,
    this.addShadow = true,
    this.shadowColor,
    this.innerPadding,
    this.outsideMargin,
    this.isCircleGradiant = true,
    this.gradientColors,
    this.spreadRadius = 3,
    this.blurRadius = 16,
    this.offset = 5,
  });

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _KH_Colors = _theme.extension<KH_Colors>()!;

    return Container(
      width: width ?? null,
      height: height ?? null,
      padding: EdgeInsets.symmetric(horizontal: innerPadding ?? 0),
      margin: EdgeInsets.symmetric(horizontal: outsideMargin ?? 16),
      child: child,
      //@@@@@@@@@@@@//
      //@@@@@@@@@@@@//
      decoration: ShapeDecoration(
        // color: (isGradiant == true) ? null : (bgColor ?? _KH_Colors.CardColor),
        shape: SmoothRectangleBorder(
          borderRadius: SmoothBorderRadius(
            cornerRadius: borderRadius ?? 16,
            cornerSmoothing: 1,
          ),
        ),
        //@@@@@@@@@@@@//
        //@@@@@@@@@@@@//
        gradient: (isCircleGradiant == true)
            ? RadialGradient(
                colors: gradientColors ??
                    [
                      _theme.primaryColor.withOpacity(0.7),
                      _theme.primaryColor,
                      // _theme.primaryColor.withOpacity(0.7),
                    ],
              )
            : LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: gradientColors ??
                    [
                      _theme.primaryColor,
                      _theme.primaryColor.withOpacity(0.7),
                    ],
              ),
        // LinearGradient
        // RadialGradient
        //@@@@@@@@@@@@//
        //@@@@@@@@@@@@//
        shadows: [
          if (addBorderShadow == true)
            BoxShadow(
              color: _KH_Colors.SubTitelsColor.withOpacity(0.5),
              spreadRadius: 0.5,
              blurRadius: 0.5,
              offset: Offset(0, 0), // changes position of shadow
            ),
          if (addShadow == true)
            BoxShadow(
              color: shadowColor ?? _KH_Colors.CardShadowColor,
              spreadRadius: spreadRadius ?? 3,
              blurRadius: blurRadius ?? 16,
              offset: Offset(
                0,
                offset ?? 5,
              ), // changes position of shadow
            ),
        ],
        //@@@@@@@@@@@@//
        //@@@@@@@@@@@@//
      ),

      //@@@@@@@@@@@@//
      //@@@@@@@@@@@@//
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@      KH_SplashedCard       @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class KH_SplashedCard extends StatelessWidget {
  //@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@//
  final Widget child;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? bgColor;
  final Color? splashColor;
  final bool? addBorderShadow;
  final bool? addShadow;
  final double? innerPadding;
  final double? outsideMargin;
  final bool? isShadowColored;
  final VoidCallback? onTapping;

  const KH_SplashedCard({
    required this.child,
    this.width,
    this.height,
    this.borderRadius,
    this.bgColor,
    this.splashColor,
    this.addBorderShadow = false,
    this.addShadow = false,
    this.innerPadding,
    this.outsideMargin,
    this.isShadowColored = false,
    this.onTapping,
  });
  //@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@//
  @override
  Widget build(BuildContext context) {
    //@@@@@@@@@@@@@@@//
    //@@@@@@@@@@@@@@@//
    // final _ss = S.of(context);
    final _theme = Theme.of(context);
    //@@@@@@@@@@@@@@@//
    //@@@@@@@@@@@@@@@//
    return Material(
      child: KH_ShadowCard(
        borderRadius: borderRadius ?? 16,
        outsideMargin: outsideMargin,
        innerPadding: innerPadding,
        bgColor: bgColor ?? _theme.hintColor.withOpacity(0.2),
        addShadow: addShadow,
        width: width ?? null,
        height: height ?? null,
        addBorderShadow: addBorderShadow,
        isShadowColored: isShadowColored,
        child: InkWell(
          highlightColor: splashColor ?? _theme.hintColor.withOpacity(0.2),
          splashColor: splashColor ?? _theme.hintColor.withOpacity(0.2),
          onTap: onTapping,
          borderRadius: SmoothBorderRadius(
            cornerRadius: borderRadius ?? 16,
            cornerSmoothing: 1,
          ),
          child: child,
        ),
      ),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@        KH_GlassCard        @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class KH_GlassCard extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  // final double? innerPadding;
  final double? borderRadiusTop;
  final double? borderRadiusBottom;
  final double filterX;
  final double filterY;
  final Color? bgColor;

  KH_GlassCard({
    required this.child,
    this.height,
    this.width,
    // this.innerPadding,
    this.borderRadiusTop,
    this.borderRadiusBottom,
    this.filterX = 15,
    this.filterY = 15,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _KH_Colors = _theme.extension<KH_Colors>()!;

    return ClipSmoothRect(
      radius: SmoothBorderRadius.only(
        topRight: SmoothRadius(
          cornerRadius: borderRadiusTop ?? 16,
          cornerSmoothing: 1,
        ),
        topLeft: SmoothRadius(
          cornerRadius: borderRadiusTop ?? 16,
          cornerSmoothing: 1,
        ),
        bottomRight: SmoothRadius(
          cornerRadius: borderRadiusBottom ?? 16,
          cornerSmoothing: 1,
        ),
        bottomLeft: SmoothRadius(
          cornerRadius: borderRadiusBottom ?? 16,
          cornerSmoothing: 1,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: filterX,
          sigmaY: filterY,
        ),
        child: Container(
          width: width ?? null,
          height: height ?? null,
          // padding: EdgeInsets.symmetric(horizontal: innerPadding ?? 12),
          decoration: ShapeDecoration(
            color: bgColor ?? _KH_Colors.SubTitelsColor.withOpacity(0.1),
            //@@@@@@@@@@@@//
            //@@@@@@@@@@@@//
            shape: SmoothRectangleBorder(
              borderRadius: SmoothBorderRadius.only(
                topRight: SmoothRadius(
                  cornerRadius: borderRadiusTop ?? 16,
                  cornerSmoothing: 1,
                ),
                topLeft: SmoothRadius(
                  cornerRadius: borderRadiusTop ?? 16,
                  cornerSmoothing: 1,
                ),
                bottomRight: SmoothRadius(
                  cornerRadius: borderRadiusBottom ?? 16,
                  cornerSmoothing: 1,
                ),
                bottomLeft: SmoothRadius(
                  cornerRadius: borderRadiusBottom ?? 16,
                  cornerSmoothing: 1,
                ),
              ),
            ),
            //@@@@@@@@@@@@//
            //@@@@@@@@@@@@//
            // border: Border.all(
            //   width: 1,
            //   color: Colors.white30,
            // ),
            //@@@@@@@@@@@@//
            //@@@@@@@@@@@@//
          ),
          child: child,
        ),
      ),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@     KH_Responsive Card     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class KH_ResponsiveCard extends StatelessWidget {
  final Widget child;
  final bool isFormScreen;
  final bool isActive;
  const KH_ResponsiveCard({
    Key? key,
    required this.child,
    this.isFormScreen = false,
    this.isActive = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (isFormScreen) {
      return Container(
        child: child,
        width: double.infinity,
        color: Colors.transparent,
        // padding: EdgeInsets.symmetric(horizontal: 100, vertical:100),
        margin: EdgeInsets.symmetric(
          horizontal: KH_Responsivenes.isMobile(context)
              ? 1
              : KH_Responsivenes.isTablet(context)
                  ? 16
                  : KH_Responsivenes.isLargDesktop(context)
                      ? width / 8
                      : KH_Responsivenes.isDesktop(context)
                          ? width / 8
                          : 1,
        ),
      );
    } else {
      return Container(
        child: child,
        width: double.infinity,
        color: Colors.transparent,
        // padding: EdgeInsets.symmetric(horizontal: 100, vertical:100),
        margin: EdgeInsets.symmetric(
          horizontal: (isActive == false)
              ? 0
              : KH_Responsivenes.isMobile(context)
                  ? 1
                  : KH_Responsivenes.isTablet(context)
                      ? 16
                      : KH_Responsivenes.isXLargDesktop(context)
                          ? width / 10
                          : KH_Responsivenes.isLargDesktop(context)
                              ? width / 20
                              : KH_Responsivenes.isDesktop(context)
                                  ? 22
                                  : 1,
        ),
      );
    }
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@     KH_Responsive Card     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class KH_ResponsiveCard_2 extends StatelessWidget {
  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
  final Widget child;
  final bool isFormScreen;
  final double largDesktopDivisionFactor;
  final double desktopDivisionFactor;
  final double? desktopPadding;
  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
  const KH_ResponsiveCard_2({
    Key? key,
    required this.child,
    this.isFormScreen = false,
    this.largDesktopDivisionFactor = 8,
    this.desktopDivisionFactor = 8,
    this.desktopPadding,
  }) : super(key: key);
  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
  @override
  Widget build(BuildContext context) {
    //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
    final width = MediaQuery.of(context).size.width;
    //@@@@@@@@@@@@@//@@@@@@@@@@@@@//@@@@@@@@@@@@@//
    if (isFormScreen == true) {
      return Container(
        child: child,
        width: double.infinity,
        color: Colors.transparent,
        // padding: EdgeInsets.symmetric(horizontal: 100, vertical:100),
        margin: EdgeInsets.symmetric(
          horizontal: KH_Responsivenes.isMobile(context)
              ? 1
              : KH_Responsivenes.isTablet(context)
                  ? 16
                  : KH_Responsivenes.isLargDesktop(context)
                      ? width / largDesktopDivisionFactor
                      : KH_Responsivenes.isDesktop(context)
                          ? width / desktopDivisionFactor
                          : 1,
        ),
      );
    } else {
      return Container(
        child: child,
        width: double.infinity,
        color: Colors.transparent,
        // padding: EdgeInsets.symmetric(horizontal: 100, vertical:100),
        margin: EdgeInsets.symmetric(
          horizontal: KH_Responsivenes.isMobile(context)
              ? 1
              : KH_Responsivenes.isTablet(context)
                  ? 16
                  : KH_Responsivenes.isLargDesktop(context)
                      ? width / largDesktopDivisionFactor
                      : KH_Responsivenes.isDesktop(context)
                          ? (desktopPadding != null)
                              ? desktopPadding!
                              : width / desktopDivisionFactor
                          : 1,
        ),
      );
    }
  }
}
