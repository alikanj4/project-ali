import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled12/MODELS/CLASESS/KH_Themes.dart';
import 'package:untitled12/SECREEN/App/HOME%20TAP/HomePage.dart';
import 'package:untitled12/SECREEN/App/HOME%20TAP/Order.dart';
import 'package:untitled12/SECREEN/App/HOME%20TAP/Settings.dart';
import 'package:untitled12/imageassets.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class TabBarController extends StatefulWidget {
  static const routName = "/TabBarController";
  @override
  _TabBarControllerState createState() => _TabBarControllerState();
}

class _TabBarControllerState extends State<TabBarController> {
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  int _selectedPageIndex = 0;
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  // final List<TapBarItem> _taps = [
  // TapBarItem(screen: HomePageScreen(), title: "home"),
  // TapBarItem(screen: ReservationsScreen(), title: "reservations"),
  // TapBarItem(screen: SettingsScreen(), title: "settings"),
  // ];
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  final List<Widget> _pages = [
    const HomePage(),
    const Order(),
    const Settings()
  ];
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  @override
  Widget build(BuildContext context) {
    // final _ss = S.of(context);
    final _theme = Theme.of(context);
    final _KH_Colors = _theme.extension<KH_Colors>()!;
    // final _isDark = KH_Helper.isDarkModeOn(context: context);
    // final _isNormalIcons = KH_AppSettings.getIsUsingNormalIconsStatus;

    return Scaffold(
      // resizeToAvoidBottomInset: true,
      // extendBody:true,

      // appBar: AppBar(
      //   title: Text(_taps[_selectedPageIndex].title),
      // ),
      //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

      // body: _taps[_selectedPageIndex].screen,

      // body: IndexedStack(
      //   index: _selectedPageIndex,
      //   children: _pages,
      // ),

      body: _pages[_selectedPageIndex],

      //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
      bottomNavigationBar: BottomNavigationBar(
        //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
        backgroundColor: _KH_Colors.TabBarColor,
        unselectedItemColor: _KH_Colors.SubTitelsColor,
        selectedItemColor: _KH_Colors.PrimeryColor,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 11,
        selectedFontSize: 11,
        // selectedLabelStyle: GoogleFonts.cairo(
        //   fontSize: 11,
        //   fontWeight: FontWeight.bold,
        // ),
        // unselectedLabelStyle: GoogleFonts.cairo(
        //   fontSize: 11,
        //   fontWeight: FontWeight.bold,
        // ),
        //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
        onTap: (indx) {
          setState(() {
            _selectedPageIndex = indx;
          });
        },
        //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
        items: const [
          //@@@@@@@@@//
          //@@@@@@@@@//
          //@@@@@@@@@//
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColor,
            label: "home",
            icon: Icon(Icons.store_outlined),
            // Icon(CupertinoIcons.home),

            // K_IS_USING_NORMAL_ICONES

            // Icon(Icons.home),
            activeIcon: Image(
              image: AssetImage(
                ImageAsset.store,
              ),
              height: 30,
              width: 30,
            ),
          ),
          //@@@@@@@@@//
          //@@@@@@@@@//
          //@@@@@@@@@//

/* 
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColor,
            label: _ss.OffersTapBarTitle,
            icon:
                // Icon(CupertinoIcons.home),
                // K_IS_USING_NORMAL_ICONES
                _isNormalIcons
                    ? Icon(CupertinoIcons.gift)
                    : Image(
                        image: AssetImage(
                          "assets/icons/tapbar/icons8-gift-card-100-2.png",
                        ),
                        height: 30,
                        width: 30,
                        color: _isDark == true ? _theme.hintColor : null,
                      ), // Icon(Icons.home),
            activeIcon: // K_IS_USING_NORMAL_ICONES
                _isNormalIcons
                    ? Icon(CupertinoIcons.gift)
                    : Image(
                        image: AssetImage(
                          "assets/icons/tapbar/icons8-gift-card-100.png",
                        ),
                        height: 30,
                        width: 30,
                      ),
          ),
          //@@@@@@@@@//
          //@@@@@@@@@//
          //@@@@@@@@@//
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColor,
            label: _ss.SearchTapBarTitle,
            icon:
                // Icon(CupertinoIcons.home),
                // K_IS_USING_NORMAL_ICONES
                _isNormalIcons
                    ? Icon(CupertinoIcons.search)
                    : Image(
                        image: AssetImage(
                          "assets/icons/tapbar/icons8-search-more-100-2.png",
                        ),
                        height: 30,
                        width: 30,
                        color: _isDark == true ? _theme.hintColor : null,
                      ), // Icon(Icons.home),
            activeIcon: // K_IS_USING_NORMAL_ICONES
                _isNormalIcons
                    ? Icon(CupertinoIcons.search)
                    : Image(
                        image: AssetImage(
                          "assets/icons/tapbar/icons8-search-more-100.png",
                        ),
                        height: 30,
                        width: 30,
                      ),
          ),
         */

          //@@@@@@@@@//
          //@@@@@@@@@//
          //@@@@@@@@@//
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColor,
            label: "Order",
            icon: Icon(CupertinoIcons.list_bullet),
            // Icon(CupertinoIcons.home),
            // K_IS_USING_NORMAL_ICONES
            // _isNormalIcons
            //     ? Icon(CupertinoIcons.list_bullet)
            //     : Image(
            //         image: AssetImage(
            //           "${ImageAsset.bell}",
            //         ),
            //         height: 30,
            //         width: 30,
            //         color: _isDark == true ? _theme.hintColor : null,
            //       ), // Icon(Icons.home),
            activeIcon: // K_IS_USING_NORMAL_ICONES
                Image(
              image: AssetImage(
                ImageAsset.list,
              ),
              height: 30,
              width: 30,
            ),
          ),
          //@@@@@@@@@//
          //@@@@@@@@@//
          //@@@@@@@@@//
          BottomNavigationBarItem(
            // backgroundColor: Theme.of(context).primaryColor,
            label: "Settings",
            icon: Icon(CupertinoIcons.gear),
            // Icon(CupertinoIcons.home),
            // K_IS_USING_NORMAL_ICONES
            //     _isNormalIcons
            //         ? Icon(CupertinoIcons.gear)
            //         : Image(
            //             image: AssetImage(
            //               "${ImageAsset.bell}",
            //             ),
            //             height: 30,
            //             width: 30,
            //             color: _isDark == true ? _theme.hintColor : null,
            //           ), // Icon(Icons.home),
            activeIcon: Image(
              image: AssetImage(
                ImageAsset.settings,
              ),
              height: 30,
              width: 30,
            ),
          ),
          //@@@@@@@@@//
          //@@@@@@@@@//
          //@@@@@@@@@//
        ],
        //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
      ),
    );
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class TapBarItem {
  final Widget screen;
  final String title;
  TapBarItem({
    required this.screen,
    required this.title,
  });
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
