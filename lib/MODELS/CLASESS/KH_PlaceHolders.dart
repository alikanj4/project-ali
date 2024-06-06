import 'package:flutter/material.dart';
// import 'dart:math';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class PlaceholderImageWithText extends StatelessWidget {
  final double width;
  final double height;
  final double cornerRadius;
  final Color? color;
  final Color? backgroundColor;
  final bool addShadow;

  const PlaceholderImageWithText({
    this.cornerRadius = 0,
    this.color,
    this.backgroundColor,
    this.width = 100,
    this.height = 100,
    this.addShadow = false,
  });

  @override
  Widget build(BuildContext context) {
    var fgColor = color ?? Color(0xfff2f2f2);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(cornerRadius),
        color: backgroundColor ?? Colors.white,
        boxShadow: [
          if (addShadow)
            BoxShadow(
              color: Colors.grey.withOpacity(0.09),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 5), // changes position of shadow
            ),
        ],
      ),
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(cornerRadius),
                    topRight: Radius.circular(cornerRadius)),
                color: fgColor,
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(cornerRadius),
            child: Stack(
              children: <Widget>[
                Container(
                  color: fgColor,
                  height: 16,
                  margin: EdgeInsets.only(top: 12, left: 25, right: 25),
                ),
                Container(
                  color: fgColor,
                  height: 10,
                  margin: EdgeInsets.only(top: 40, left: 10, right: 10),
                ),
                Container(
                  color: fgColor,
                  height: 10,
                  margin: EdgeInsets.only(top: 56, left: 10, right: 10),
                ),
                Container(
                  color: fgColor,
                  height: 10,
                  margin:
                      EdgeInsets.only(top: 72, left: 10, right: 10, bottom: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*

// HOW TO USE :

GridView.count(
    crossAxisCount: 2,
    children: List.generate(10, (index) {
    return PlaceholderImageWithText(
        color: Colors.grey.withOpacity(0.3),
        cornerRadius: 12,
        addShadow: true,
    );
    }),
),
            
// USE WITH SHIMMER EFFECT :

Container(
    height: 200,
    width: double.infinity,
    child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(2, (index) {
        return Shimmer.fromColors(
            baseColor: Colors.black54,
            highlightColor: Colors.grey.withOpacity(0.3),
            direction: ShimmerDirection.ltr,

            child: PlaceholderImageWithText(
            backgroundColor: Colors.transparent,
            color: Colors.grey.withOpacity(0.3),
            cornerRadius: 12,
            addShadow: true,
            ),
        );
        }),
    ),
),

*/

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class PlaceholderListTile extends StatelessWidget {
  final double width;
  final double height;
  final double cornerRadius;
  final Color? color;
  final Color? backgroundColor;
  final bool addShadow;
  final bool isRtl;

  const PlaceholderListTile({
    this.cornerRadius = 4,
    this.color,
    this.backgroundColor,
    this.width = 400,
    this.height = 90,
    this.addShadow = false,
    this.isRtl = true,
  });

  @override
  Widget build(BuildContext context) {
    // var r = Random();
    var fgColor = color ?? Color(0xfff2f2f2);
    double lineHeight = 16;
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(cornerRadius),
        color: backgroundColor ?? Colors.white,
        boxShadow: [
          if (addShadow)
            BoxShadow(
              color: Colors.grey.withOpacity(0.09),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 5), // changes position of shadow
            ),
        ],
      ),
      padding: EdgeInsets.all(26),
      child: Stack(
        children: <Widget>[
          //@@@@@@@@@@@@@@@@@@@//
          //Circle image
          if (isRtl)
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: fgColor),
                height: 45,
                width: 45,
              ),
            ),

          //@@@@@@@@@@@@@@@@@@@//
          //Content Line
          if (isRtl)
            Container(
                // margin: EdgeInsets.only(right: 60.0 + r.nextInt(60)),
                margin: EdgeInsets.only(right: 88.0),
                color: fgColor,
                height: lineHeight),

          //@@@@@@@@@@@@@@@@@@@//
          //Content Line
          if (isRtl)
            Container(
                // margin: EdgeInsets.only(right: 80.0 + r.nextInt(120), top: lineHeight + 6),
                margin:
                    EdgeInsets.only(right: 88.0, top: lineHeight + 6, left: 66),
                color: fgColor,
                height: lineHeight),
          //@@@@@@@@@@@@@@@@@@@//
          //@@@@@@@@@@@@@@@@@@@//
          //@@@@@@@@@@@@@@@@@@@//
          //@@@@@@@@@@@@@@@@@@@//
          //Circle image
          if (isRtl == false)
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: fgColor),
                height: 45,
                width: 45,
              ),
            ),

          //@@@@@@@@@@@@@@@@@@@//
          //Content Line
          if (isRtl == false)
            Container(
                // margin: EdgeInsets.only(right: 60.0 + r.nextInt(60)),
                margin: EdgeInsets.only(left: 66.0),
                color: fgColor,
                height: lineHeight),

          //@@@@@@@@@@@@@@@@@@@//
          //Content Line
          if (isRtl == false)
            Container(
                // margin: EdgeInsets.only(right: 80.0 + r.nextInt(120), top: lineHeight + 6),
                margin:
                    EdgeInsets.only(left: 66.0, top: lineHeight + 6, right: 66),
                color: fgColor,
                height: lineHeight),
          //@@@@@@@@@@@@@@@@@@@//
          //@@@@@@@@@@@@@@@@@@@//
          //@@@@@@@@@@@@@@@@@@@//
        ],
      ),
    );
  }
}

/*

// HOW TO USE :

Container(
height: 250, // double.infinity,
width: double.infinity,
child: ListView.builder(
    itemCount: 2,
    itemBuilder: (content, index) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        child: PlaceholderListTile(
        cornerRadius: 16,
        addShadow: true,
        isRtl: false,
        ),
    );
    },
),
),

// USE WITH SHIMMER EFFECT :

Container(
    height: 250,
    width: double.infinity,
    child: ListView.builder(
        itemCount: 2,
        itemBuilder: (content, index) {
        return Container(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            child: Shimmer.fromColors(
                baseColor: Colors.black54,
            highlightColor: Colors.grey.withOpacity(0.3),
            direction: ShimmerDirection.ltr,

            child: PlaceholderListTile(
                backgroundColor: Colors.transparent,
                color: Colors.grey.withOpacity(0.3),
                cornerRadius: 16,
                addShadow: true,
                isRtl: false,
            ),
            ),
        );
        },
    ),
),

*/

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class PlaceholderImage extends StatelessWidget {
  final double width;
  final double height;
  final double cornerRadius;
  final Color? color;
  final Color? backgroundColor;
  final bool addShadow;

  const PlaceholderImage({
    this.cornerRadius = 4,
    this.color,
    this.backgroundColor,
    this.width = 100,
    this.height = 100,
    this.addShadow = false,
  });

  @override
  Widget build(BuildContext context) {
    var fgColor = color ?? Color(0xfff2f2f2);
    var bgColor = backgroundColor ?? Colors.white;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(cornerRadius),
        color: bgColor,
        boxShadow: [
          if (addShadow)
            BoxShadow(
              color: Colors.grey.withOpacity(0.09),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 5), // changes position of shadow
            ),
        ],
      ),
      margin: EdgeInsets.all(12),
      child: CustomPaint(
        painter: _ImagePainter(fgColor, bgColor),
      ),
    );
  }
}

class _ImagePainter extends CustomPainter {
  final Color color;
  final Color backgroundColor;

  _ImagePainter(this.color, this.backgroundColor);

  @override
  void paint(Canvas canvas, Size size) {
    final paintForeground = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..color = color;
    //Draw mountains, size to width
    var width = size.width * .6;
    canvas.translate(
        size.width / 2 - width / 2, size.height / 2 + (width * .7) / 2);
    var path = Path()
      ..lineTo(width * .4, -width * .66)
      ..lineTo(width * .63, -width * .29)
      ..lineTo(width * .74, -width * .44)
      ..lineTo(width, 0)
      ..lineTo(0, 0);
    //Paint twice, for both stroke and fill
    canvas.drawPath(path, paintForeground);
    paintForeground.style = PaintingStyle.fill;
    canvas.drawPath(path, paintForeground);
    //Draw sun
    canvas.drawCircle(
        Offset(width * .9, -width * .7), width * .1, paintForeground);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

/*

// HOW TO USE :

Container(
    height: 200, // double.infinity,
    width: double.infinity,
    child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(2, (index) {
        return PlaceholderImage(
            addShadow: true,
            cornerRadius: 12,
        );
        }),
    ),
),
            
            
// USE WITH SHIMMER EFFECT :

Container(
    height: 200,
    width: double.infinity,
    child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(2, (index) {
        return Shimmer.fromColors(
            baseColor: Colors.black54,
            highlightColor: Colors.grey.withOpacity(0.3),
            direction: ShimmerDirection.ltr,

            child: PlaceholderImage(
                backgroundColor: Colors.transparent,
            color: Colors.grey.withOpacity(0.3),
            addShadow: true,
            cornerRadius: 12,
            ),
        );
        }),
    ),
),

*/

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class PlaceholderCardWithAvatarAndText extends StatelessWidget {
  final double width;
  final double height;
  final double cornerRadius;
  final Color? color;
  final Color? backgroundColor;
  final bool addShadow;
  final bool isRtl;

  const PlaceholderCardWithAvatarAndText({
    this.cornerRadius = 4,
    this.color,
    this.backgroundColor,
    this.width = 400,
    this.height = 140,
    this.addShadow = false,
    this.isRtl = false,
  });

  @override
  Widget build(BuildContext context) {
    // var r = Random();
    var fgColor = color ?? Color(0xfff2f2f2);
    double lineHeight = 14;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(cornerRadius),
        color: backgroundColor ?? Colors.white,
        boxShadow: [
          if (addShadow)
            BoxShadow(
              color: Colors.grey.withOpacity(0.09),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 5), // changes position of shadow
            ),
        ],
      ),
      padding: EdgeInsets.all(20),
      child: Stack(
        children: <Widget>[
          //@@@@@@@@@@@@@@@@@@@@//
          //@@@@@@@@@@@@@@@@@@@@//
          //Circle image
          if (isRtl)
            Align(
              alignment: Alignment.topRight,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(999),
                  color: fgColor,
                ),
                height: 45,
                width: 45,
              ),
            ),

          //@@@@@@@@@@@@@@@@@@@@//
          //@@@@@@@@@@@@@@@@@@@@//
          //Title
          if (isRtl)
            Container(
              margin: EdgeInsets.only(left: 65, top: 10, right: 66),
              color: fgColor,
              height: lineHeight * 1.2,
              // width: 100.0 + r.nextInt(100),
              width: 100.0,
            ),

          //@@@@@@@@@@@@@@@@@@@@//
          //@@@@@@@@@@@@@@@@@@@@//
          //Content Line
          if (isRtl)
            Container(
              // margin: EdgeInsets.only(top: 60, right: 10.0 + r.nextInt(60)),
              margin: EdgeInsets.only(top: 60, right: 10.0),
              color: fgColor,
              height: lineHeight,
            ),

          //@@@@@@@@@@@@@@@@@@@@//
          //@@@@@@@@@@@@@@@@@@@@//

          //Content Line
          // Container(
          //     // margin: EdgeInsets.only(top: 85, right: 10.0 + r.nextInt(60)),
          //     margin: EdgeInsets.only(top: 85, right: 10.0),
          //     color: fgColor,
          //     height: lineHeight),

          // //Content Line
          // Container(
          //     // margin: EdgeInsets.only(top: 110, right: 10.0 + r.nextInt(60)),
          //     margin: EdgeInsets.only(top: 110, right: 10.0),
          //     color: fgColor,
          //     height: lineHeight),

          //@@@@@@@@@@@@@@@@@@@@//
          //@@@@@@@@@@@@@@@@@@@@//
          //Content Line
          if (isRtl)
            Container(
              //  margin: EdgeInsets.only(top: 135, right: 60.0 + r.nextInt(60)),
              margin: EdgeInsets.only(top: 85, right: 10.0, left: 66),
              color: fgColor,
              height: lineHeight,
            ),

          //@@@@@@@@@@@@@@@@@@@@//
          //@@@@@@@@@@@@@@@@@@@@//
          //@@@@@@@@@@@@@@@@@@@@//
          //@@@@@@@@@@@@@@@@@@@@//
          //@@@@@@@@@@@@@@@@@@@@//
          //@@@@@@@@@@@@@@@@@@@@//

          //Circle image
          if (isRtl == false)
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(999),
                  color: fgColor,
                ),
                height: 45,
                width: 45,
              ),
            ),

          //@@@@@@@@@@@@@@@@@@@@//
          //@@@@@@@@@@@@@@@@@@@@//
          //Title
          if (isRtl == false)
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(left: 66, top: 10, right: 0),
                color: fgColor,
                height: lineHeight * 1.2,
                // width: 100.0 + r.nextInt(100),
                width: 100.0,
              ),
            ),

          //@@@@@@@@@@@@@@@@@@@@//
          //@@@@@@@@@@@@@@@@@@@@//
          //Content Line
          if (isRtl == false)
            Container(
              // margin: EdgeInsets.only(top: 60, right: 10.0 + r.nextInt(60)),
              margin: EdgeInsets.only(top: 60, right: 10.0),
              color: fgColor,
              height: lineHeight,
            ),

          //@@@@@@@@@@@@@@@@@@@@//
          //@@@@@@@@@@@@@@@@@@@@//

          //Content Line
          // Container(
          //     // margin: EdgeInsets.only(top: 85, right: 10.0 + r.nextInt(60)),
          //     margin: EdgeInsets.only(top: 85, right: 10.0),
          //     color: fgColor,
          //     height: lineHeight),

          // //Content Line
          // Container(
          //     // margin: EdgeInsets.only(top: 110, right: 10.0 + r.nextInt(60)),
          //     margin: EdgeInsets.only(top: 110, right: 10.0),
          //     color: fgColor,
          //     height: lineHeight),

          //@@@@@@@@@@@@@@@@@@@@//
          //@@@@@@@@@@@@@@@@@@@@//
          //Content Line
          if (isRtl == false)
            Container(
              //  margin: EdgeInsets.only(top: 135, right: 60.0 + r.nextInt(60)),
              margin: EdgeInsets.only(top: 85, right: 66.0, left: 0),
              color: fgColor,
              height: lineHeight,
            ),
        ],
      ),
    );
  }
}


/*

// HOW TO USE :

Container(
    height: 350, // double.infinity,
    width: double.infinity,
    child: ListView.builder(
        itemCount: 2,
        itemBuilder: (content, index) {
        return Container(
            padding: EdgeInsets.all(16),
            child: PlaceholderCardWithAvatarAndText(
                height: 133,
                addShadow: true,
                cornerRadius: 16,
                // backgroundColor: Colors.black12,
                // color: Colors.red,
                // isRtl: true,
                isRtl: false,
                ),
        );
        },
    ),
),
              
              
// USE WITH SHIMMER EFFECT 

Container(
    height: 350,
    width: double.infinity,
    child: ListView.builder(
        itemCount: 2,
        itemBuilder: (content, index) {
        return Container(
            padding: EdgeInsets.all(16),
            child: Shimmer.fromColors(
                baseColor: Colors.black54,
            highlightColor: Colors.grey.withOpacity(0.3),
            direction: ShimmerDirection.rtl,
            child: PlaceholderCardWithAvatarAndText(
                backgroundColor: Colors.transparent,
                color: Colors.grey.withOpacity(0.3),
                height: 133,
                //addShadow: true,
                cornerRadius: 16,
                // backgroundColor: Colors.black12,
                    // color: Colors.black,
                // isRtl: true,
                    isRtl: true,
                ),
            ),
        );
        },
    ),
),
              
*/
              
              

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@         FUNCTIONN          @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

