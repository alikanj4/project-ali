// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled12/MODELS/CLASESS/KH_Responsivness.dart';
import 'package:untitled12/SECREEN/App/HOME%20TAP/resturant.dart';
import 'package:untitled12/SECREEN/App/HOME%20TAP/Ecommerce.dart';
import 'package:untitled12/VIEW/KH_Componants.dart';
import 'package:untitled12/imageassets.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@          HOMEPAGE          @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _StateHomePage();
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@          HOMEPAGE          @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class _StateHomePage extends State<HomePage> {
  List imagename = [ImageAsset.eat, ImageAsset.ecommerce];
  Map<dynamic, dynamic> name = {0: "AVON", 1: "PEITZA"};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF3F6FF),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
            children: [
              SizedBox(height: 20),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@// APPBARHOME
              //@@@@@@@@//@@@@@@@@@//
              AppBarHome(
                onPressdbell: () {},
                onPressdlocation: () {},
                onPressdref: () {},
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@// HomePageAdvetismentsSliderCourser
              //@@@@@@@@//@@@@@@@@@//
              HomePageAdvetismentsSliderCourser(),

              //=======================================================================
              KH_App_Title(
                text: "hungry ? wanna shop ?",
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@// EcommrceAndResHome
              //@@@@@@@@//@@@@@@@@@//
              EcommrceAndResHome(),

              KH_App_Title(text: "Top list", fontSize: 18),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@// AdvetismentSlider
              //@@@@@@@@//@@@@@@@@@//

              AdvetismentSlider(
                  logooimageres: ImageAsset.eat,
                  text: "text",
                  widthimage: 340,
                  withOpacity: 340,
                  leftlogo: 210),

              //=======================================================================
              KH_App_Title(
                text: "Latest we received header",
                fontSize: 18,
              ),

              //@@@@@@@@//@@@@@@@@@//
              //@@@@@@@@//@@@@@@@@@// AdvetismentSlider
              //@@@@@@@@//@@@@@@@@@//

              AdvetismentSlider(
                  logooimageres: ImageAsset.eat,
                  text: "text",
                  widthimage: 240,
                  withOpacity: 240,
                  leftlogo: 140),

              SizedBox(height: 20),
            ],
          )),
        ));
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@          AppBarHome        @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@          AppBarHome        @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class AppBarHome extends StatelessWidget {
  final void Function()? onPressdref;
  final void Function()? onPressdbell;
  final void Function()? onPressdlocation;
  const AppBarHome(
      {super.key, this.onPressdref, this.onPressdbell, this.onPressdlocation});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(children: [
          Expanded(
              flex: 1,
              child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 5.5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: MaterialButton(
                      onPressed: onPressdbell,
                      child: Image.asset(ImageAsset.bell,
                          fit: BoxFit.cover, width: 30, height: 30)))),
          const SizedBox(width: 10),

          //========================================

          Expanded(
              flex: 4,
              child: Container(
                  alignment: Alignment.center,
                  child: Stack(children: [
                    TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10)),
                            hintStyle: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            fillColor: Colors.white,
                            filled: true)),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Center(
                          child: MaterialButton(onPressed: onPressdlocation)),
                    )
                  ]))),
          const SizedBox(width: 10),

          //========================================

          Expanded(
            flex: 1,
            child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5.5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: MaterialButton(
                    onPressed: onPressdref,
                    child: Image.asset(
                      ImageAsset.ref,
                      height: 30,
                      width: 30,
                      fit: BoxFit.cover,
                    ))),
          )
        ]));
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@     EcommrceAndResHome     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@     EcommrceAndResHome     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class EcommrceAndResHome extends StatelessWidget {
  const EcommrceAndResHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Ecommerce()));
              },
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    ImageAsset.ecommerce,
                  ),
                ),
              ),
            ),
          ),

          //==========================================
          const SizedBox(width: 20),
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Restutant()));
              },
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    ImageAsset.matam,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@      AdvetismentSlider     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@      AdvetismentSlider     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class AdvetismentSlider extends StatelessWidget {
  final String logooimageres;
  final String text;
  final double widthimage;
  final double withOpacity;
  final double leftlogo;

  const AdvetismentSlider({
    super.key,
    required this.logooimageres,
    required this.text,
    required this.widthimage,
    required this.withOpacity,
    required this.leftlogo,
  });

  @override
  Widget build(BuildContext context) {
    List imagename = [ImageAsset.eat, ImageAsset.ecommerce];
    Map<dynamic, dynamic> name = {0: "AVON", 1: "PEITZA"};
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        height: 140,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imagename.length,
              itemBuilder: (context, index) {
                return Row(children: [
                  const SizedBox(width: 10),

                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Image.asset("${imagename[index]}",
                              width: widthimage, fit: BoxFit.cover),
                          Container(
                              margin: EdgeInsets.only(
                                  left: leftlogo, bottom: 70, top: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(width: 3)),
                              height: 80,
                              width: 80,
                              child: Image.asset(ImageAsset.eat)),
                          Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              height: 30,
                              width: withOpacity,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text("${name[index]}",
                                  textAlign: TextAlign.right,
                                  style: const TextStyle(fontSize: 20))),
                        ],
                      )),
                  //========================================================
                ]);
              }),
        ));
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@     AdvetismentsSlider     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@     AdvetismentsSlider     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class HomePageAdvetismentsSliderCourser extends StatefulWidget {
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
  _HomePageAdvetismentsSliderCourserState createState() =>
      _HomePageAdvetismentsSliderCourserState();
}

class _HomePageAdvetismentsSliderCourserState
    extends State<HomePageAdvetismentsSliderCourser> {
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
            constraints: BoxConstraints(
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
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
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
                return KH_ShadowCard(
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

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@      SliderHomePage        @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@      SliderHomePage        @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class SliderHomePage extends StatefulWidget {
  const SliderHomePage({super.key});

  @override
  State<SliderHomePage> createState() => _StateSliderHpmePage();
}

class _StateSliderHpmePage extends State<SliderHomePage> {
  List onbradinglist = [
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fkamariclarke.com%2F%3Fm%3D2021-toyota-camry-gets-styling-and-tech-updates-across-ii-96VJdPcn&psig=AOvVaw0M9S0rjQx7ZD5yFBZ5Q6rr&ust=1717438900524000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCMibmc7EvYYDFQAAAAAdAAAAABAJ",
    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.autobild.de%2Fartikel%2Ftoyota-camry-kaufberatung-16469053.html&psig=AOvVaw0M9S0rjQx7ZD5yFBZ5Q6rr&ust=1717438900524000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCMibmc7EvYYDFQAAAAAdAAAAABAS",
  ];
  int curntpage = 0;
  @override
  void initState() {
    curntpage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            constraints: BoxConstraints(
              maxHeight: 180,
              maxWidth: double.infinity,
            ),
            child: CarouselSlider.builder(
              itemCount: onbradinglist.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) {
                return ClipRRect(
                  child: Image.network(
                      "https://corporate.walmart.com/content/dam/corporate/images/global-responsibility/sustainability/planet/nature/businessfornature-banner.png"),
                  // CachedNetworkImage(
                  //   imageUrl:
                  //       "https://corporate.walmart.com/content/dam/corporate/images/global-responsibility/sustainability/planet/nature/businessfornature-banner.png",
                  //   // widget.addvertismentsArray[index].image ?? "",
                  //   placeholder: (context, url) {
                  //     // return PlaceholderImage();
                  //     return Center(child: CircularProgressIndicator(),);
                  //   },
                  //   errorWidget: (context, url, error) => PlaceholderImage(
                  //     cornerRadius: 22,
                  //   ),
                  //   fit: BoxFit.cover,
                  //   // height: double.infinity,
                  //   width: double.infinity,
                  // ),
                  // Container(
                  //   child: Image.asset(
                  //     onbradinglist[itemIndex],
                  //   ),
                  // ),
                );
              },
              options: CarouselOptions(
                height: 180,
                aspectRatio: 16 / 9,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                viewportFraction:
                    KH_Responsivenes.isMobile(context) ? 0.9 : 0.66,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.4,
                onPageChanged: (index, reson) {
                  setState(() {
                    // currentPage = index;
                  });
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Center(
            child: AnimatedSmoothIndicator(
              activeIndex: curntpage,
              count: onbradinglist.length,
              effect: const WormEffect(
                dotHeight: 8,
                dotWidth: 8,
                dotColor: Colors.grey,
                activeDotColor: Colors.pink,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
