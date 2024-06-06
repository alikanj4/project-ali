import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled12/VIEW/KH_Componants.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@ AdvetismentsSliderCourser  @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@ AdvetismentsSliderCourser  @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class AdvetismentsSliderCourser extends StatefulWidget {
  const AdvetismentsSliderCourser({super.key});

  // final List<AdvertisementsObject> addvertismentsArray;
  // final bool isPageSnapping;
  // final StoreObject? theStore;
  // final ProductObject? theProduct;
  // HomePageAdvetismentsSliderCourser({
  //   // required this.addvertismentsArray,
  //   // required this.isPageSnapping,
  //   // required this.theStore,
  //   // required this.theProduct,
  // });
  @override
  State<AdvetismentsSliderCourser> createState() =>
      _AdvetismentsSliderCourser();
}

class _AdvetismentsSliderCourser extends State<AdvetismentsSliderCourser> {
  //@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@//
  List<Container> indicators = [];
  int currentPage = 0;
  //@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@//
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    // final _KH_Colors = _theme.extension<KH_Colors>()!;
    //@@@@@@@@@@@@@@@@@@@@@//
    //@@@@@@@@@@@@@@@@@@@@@//
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      height: 215,
      width: double.infinity,
      // color: Colors.black87,
      //@@@@@@@@@@@@@@@@@@@@@//
      //@@@@@@@@@@@@@@@@@@@@@//
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //@@@@@@@@@@@@@@@@@@@@@//
          //@@@@@@@@@@@@@@@@@@@@@//
          Container(
            // color: Colors.cyanAccent,
            constraints: const BoxConstraints(
              maxHeight: 180,
              maxWidth: double.infinity,
            ),
            // color: Colors.black12,
            //@@@@@@@@@@@@@@@@@@@@@//
            //@@@@@@@@@@@@@@@@@@@@@//
            child: CarouselSlider.builder(
              options: CarouselOptions(
                height: 180,
                aspectRatio: 16 / 9,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                viewportFraction: 1,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.4,
                onPageChanged: (index, reson) {
                  setState(() {
                    currentPage = index;
                  });
                },
                scrollDirection: Axis.horizontal,
              ),
              itemCount: 2,
              itemBuilder: (
                BuildContext context,
                int index,
                int realIndex,
              ) {
                // final item = widget.addvertismentsArray[index];
                return const KH_ShadowCard(
                    width: double.infinity,
                    child: Center(child: Text("hellow")));
              },
            ),
          ),

          // updateIndicators(context: context),
        ],
      ),
    );
  }

  //@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@//
  // Widget updateIndicators({required BuildContext context}) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: widget.addvertismentsArray.length <= 1
  //         ? []
  //         : widget.addvertismentsArray.map(
  //             (ad) {
  //               var index = widget.addvertismentsArray.indexOf(ad);
  //               return Container(
  //                 width: 7.0,
  //                 height: 7.0,
  //                 margin: EdgeInsets.symmetric(horizontal: 6.0),
  //                 decoration: BoxDecoration(
  //                   shape: BoxShape.circle,
  //                   color: currentPage == index
  //                       ? Theme.of(context).primaryColor
  //                       : Theme.of(context).hintColor,
  //                 ),
  //               );
  //             },
  //           ).toList(),
  //   );
  // }
  //@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@//
}
