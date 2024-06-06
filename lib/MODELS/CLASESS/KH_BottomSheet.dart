// ignore_for_file: camel_case_types

import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@      KH BOTTOM SHEET       @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@      KH BOTTOM SHEET       @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class KH_BottomSheet {
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@      KH BOTTOM SHEET       @@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@      KH BOTTOM SHEET       @@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

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

  // ignore: non_constant_identifier_names
  static Future show_KH_BottomSheet({
    required BuildContext context,
    required Widget child,
    bool? isDragable,
    bool? isScrollable,
    bool? isDismissible,
  }) async {
    final val = await showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      isDismissible: isDismissible ?? true,
      isScrollControlled: isScrollable ?? true,
      enableDrag: isDragable ?? true,
      backgroundColor: Colors.transparent,
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.only(
      //     topLeft: Radius.circular(31),
      //     topRight: Radius.circular(31),
      //   ),
      // ),
      //@@@@@@@@@@@@@//
      //@@@@@@@@@@@@@//
      shape: SmoothRectangleBorder(
        borderRadius: SmoothBorderRadius.only(
          topLeft: SmoothRadius(
            cornerRadius: 31,
            cornerSmoothing: 1,
          ),
          topRight: SmoothRadius(
            cornerRadius: 31,
            cornerSmoothing: 1,
          ),
          // bottomLeft: SmoothRadius(
          //   cornerRadius: 2,
          //   cornerSmoothing: 1,
          // ),
          // bottomRight: SmoothRadius(
          //   cornerRadius: 2,
          //   cornerSmoothing: 1,
          // ),
        ),
      ),
      //@@@@@@@@@@@@@//
      //@@@@@@@@@@@@@//
      builder: (context) {
        return Container(
          // height: double.infinity,
          // width: double.infinity,
          color: Colors.transparent,
          child: child,
        );
      },
    );
    return (val != null) ? val : null;
  }

  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@      KH BOTTOM SHEET       @@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@      KH BOTTOM SHEET       @@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@    WhiteBottomSheetCard    @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class WhiteBottomSheetCard extends StatelessWidget {
  final Widget child;
  final double? height;
  final double sidesMargin;
  final double bottomMargin;
  final Color? bgColor;
  final double topCornerRadius;
  final double bottomCornerRadius;

  WhiteBottomSheetCard({
    required this.child,
    this.height,
    this.sidesMargin = 0,
    this.bottomMargin = 0,
    this.bgColor,
    this.topCornerRadius = 18,
    this.bottomCornerRadius = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: sidesMargin,
        left: sidesMargin,
        bottom: bottomMargin,
      ),
      child: Container(
        height: height,
        // decoration: BoxDecoration(
        //   color: bgColor ?? Theme.of(context).cardColor,
        //   borderRadius: BorderRadius.only(
        //     topRight: Radius.circular(topCornerRadius),
        //     topLeft: Radius.circular(topCornerRadius),
        //     bottomRight: Radius.circular(bottomCornerRadius),
        //     bottomLeft: Radius.circular(bottomCornerRadius),
        //   ),
        // ),

        decoration: ShapeDecoration(
          color: bgColor ?? Theme.of(context).cardColor,
          shape: SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius.only(
              topLeft: SmoothRadius(
                cornerRadius: topCornerRadius,
                cornerSmoothing: 1,
              ),
              topRight: SmoothRadius(
                cornerRadius: topCornerRadius,
                cornerSmoothing: 1,
              ),
              bottomLeft: SmoothRadius(
                cornerRadius: bottomCornerRadius,
                cornerSmoothing: 1,
              ),
              bottomRight: SmoothRadius(
                cornerRadius: bottomCornerRadius,
                cornerSmoothing: 1,
              ),
            ),
          ),
        ),
        //@@@@@@@@@@@@@//
        //@@@@@@@@@@@@@//

        child: child,
      ),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@    TopLineOfBottomSheet    @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class TopLineOfBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: 100,
      height: 5.0,
      decoration: BoxDecoration(
        color: theme.hintColor.withOpacity(0.44),
        borderRadius: BorderRadius.circular(5.0),
      ),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@      KH BOTTOM SHEET       @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@      KH BOTTOM SHEET       @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//


// HOW TO USE : 

/*

KH_BottomSheet.show_KH_BottomSheet(
    context: context,
    child: WhiteBottomSheetCard(
    height: 420,
    bgColor: Theme.of(context).colorScheme.background,
    child: Column(
        children: [
        
        //@@@@@@@@@@//
        Padding(
            padding: const EdgeInsets.all(6.0),
            child: TopLineOfBottomSheet(),
        ),
        //@@@@@@@@@@//
        SizedBox(
            height: 8,
        ),
        Text(
            "TITLE HERE" ,
            style: Theme.of(context).textTheme.headline6,
        ),
        //@@@@@@@@@@//
        
        ],
    ),
    ),
);

*/





























