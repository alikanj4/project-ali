import 'package:flutter/foundation.dart';

/*
  
final _ss = S.of(context);
final _theme = Theme.of(context);
final _KH_Colors = _theme.extension<KH_Colors>()!;

  
if (!mounted) return;
      setState(() {
        apiCurrenciesArray = currenciesResponse.currencies ?? [];
      });


ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),



Theme(
            data: ThemeData(
              splashColor: _theme.primaryColor.withOpacity(0.2),
              highlightColor: Colors.transparent,
            ),



Theme(
  data: Theme.of(context).copyWith(
    splashColor: Colors.transparent,
    splashColor: _theme.primaryColor.withOpacity(0.2),
    highlightColor: Colors.transparent,
    ),
  


Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    // return NewUserScreen();
                    return NewUserScreenParent();
                  },
                  fullscreenDialog: true,
                ),
              );


              Navigator.push(context, MaterialPageRoute(builder: (context) => ChoseCityVC() ));

*/

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

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@        APP SETTINGS        @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

// https://koy-mall.com
// https://koymall.com

// TEST BASE URL
const K_APP_BASE_URL = "develop.koy-mall.com";
const K_APP_BASE_URL_OF_STORAGE =
    "https://develop.koy-mall.com/assets/uploads/";

// LIVE BASE URL
// const K_APP_BASE_URL = "koy-mall.com";
// const K_APP_BASE_URL_OF_STORAGE = "https://koy-mall.com/assets/uploads/";

const K_IS_LOGING_WITH_EMAIL = false;
// const K_IS_USING_NORMAL_ICONES = true;
// const K_SETTINGS_PAGE_STYLE = SettingsStyleEnum.ListTileWithDivider;

const K_APP_LOGO_IMAGE_PATH = "assets/images/logo/koylogotransparent.png";
const K_APP_VERSION_NUMBER = "1.4.4"; // 1.4.4+16
const K_IS_APP_IN_PRODUCTION = false;
const K_APP_PAGNATION_COUNT = 25;

const K_API_USER_TYPE = "customer";
//
const K_API_PASSWORD_0 = "XtnfJrRWxEKuR";
const K_API_PASSWORD_1 = "LXxokURcA6RT";
const K_API_PASSWORD = K_API_PASSWORD_0 + K_API_PASSWORD_1;
// "XtnfJrRWxEKuRLXxokURcA6RT";
//
const K_IOS_DEVICE_TYPE = "ios";
const K_ANDROID_DEVICE_TYPE = "android";

const K_MASTER_VEREVECATION_AND_PASSWORD = "1596320567636391159632";
const K_MASTER_EASY_VEREVECATION_AND_PASSWORD =
    "1596320556137992159632"; // "123321";

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@  SHARED PREFERENCE KEYES   @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

const K_GOOGLE_MAPS_API_KEY = "AIzaSyDsLLA_6psf_DfKDENUzqjT7rOL8ChndCo";

const K_ONE_SIGNAL_APP_KEY = "38712d79-6fbc-4c64-96ed-282e4406e29b";

const K_GUEST_TOKEN = "";
// "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNjBmYmQ2NGQ2OGMyNGMxMTk5YTQ3YmMxMTZmOWI4ZGU0NGZmZmNlMTdmNTQ2NzczYzZjYzE1NGMxNjM0MTVjNjJmZmY2NTIxNWI3Y2Y2OWEiLCJpYXQiOjE2MjYxMDMxNzAuMTk3Njk2OTI0MjA5NTk0NzI2NTYyNSwibmJmIjoxNjI2MTAzMTcwLjE5NzcwMDk3NzMyNTQzOTQ1MzEyNSwiZXhwIjoxNjU3NjM5MTcwLjE5NDc3MDA5NzczMjU0Mzk0NTMxMjUsInN1YiI6IjgiLCJzY29wZXMiOltdfQ.M1Vb6NwQoKIJPxQ5oUQwJ8nASxpsITy45kJS-ozZzmURD-hEghWrt3XLwrD5uv_TjG5hmkcAFpo0qzEn44GJav7QhgM9gw-hL3P6TG7bfMCaZ6somEuM4D-wtujv9nKXUxTn0hqV3s5td8Po7_XW2U5sm4z6-fiIOfehkWN1EbgkYslQVobkRTlpxGwEY7Cqit0y4wgFejfQ_0V2Sqs8OThJ-aqvpFGGvIp9kEYkk38HGjRybKk8yVltqkw9Kfag7K8CzGRMzlg2E4P6XcyskpyAte01PmIFi3ykZkBUzyxKe0h6dks4tCKSGqPGugSHs9HxFmGg2kEcHtMOcter_hXm4M1POkEvl_m49AXpkYSdMgSaAyzzk47V4DuOZ0PMwb-cpanhv1zIykVUcvNCFfPRP1sJ4SbOadnzx6ATPlLi13lI7iWpfawJ6AXtCsmnparKl2BdICHMrfa6iCN3WmKDBtbJgSP9AtZl8TPmZogtbIrlar3q2K0rmSt3oNl9v8aP0euM5VHQnqEZkWtXLnCvo6omjM7QSpIgL663KbCGZuS-yqJAvkPPBv2EXVl1W6yrUm0t5BlKsjqS9TgkhujHhjau0AvAQMM1xPqRsl4k1O-cLrDNpnL-zpP7DtRy5Diu9IhJHuwbweqNhjB1LLpFdT2Mz37AXI99gZVSC8I";

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@           ENUMS            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

enum UpdateTypeEnum {
  mandatory_update,
  optional_update,
  no_updates,
}

extension UpdateTypeEnumString on UpdateTypeEnum {
  String get rawValue => describeEnum(this);
}

//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//

enum UserTypeEnum {
  customer,
  provider,
  guest,
  admin,
}

extension UserTypeEnumString on UserTypeEnum {
  String get rawValue => describeEnum(this);
}

//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//

enum DeviceTypeEnum { ios, android, web, mac }

extension DeviceTypeEnumString on DeviceTypeEnum {
  String get rawValue => describeEnum(this);
}

//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//

enum GenderEnum {
  male,
  female,
}

extension GenderEnumString on GenderEnum {
  String get rawValue => describeEnum(this);
}

//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//

enum SettingsStyleEnum {
  ListTileWithDivider,
  ListTileWithCards,
}

extension SettingsStyleEnumString on SettingsStyleEnum {
  String get rawValue => describeEnum(this);
}

//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//

enum CategoriesStyleEnum {
  Circled,
  Squared,
  Colored,
  NotColored,
}

extension CategoriesStyleEnumString on CategoriesStyleEnum {
  String get rawValue => describeEnum(this);
}

//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//

enum ProductsSlidersStyleEnum {
  Tall,
  Wide,
}

extension ProductsSlidersStyleEnumString on ProductsSlidersStyleEnum {
  String get rawValue => describeEnum(this);
}

//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//

enum OrderStatusEnum {
  pending,
  waiting_for_payment,
  preparing,
  rejected,
  cancelled,
  done,
  delivering,
  retrieved,
  ready,
}

extension OrderStatusEnumString on OrderStatusEnum {
  String get rawValue => describeEnum(this);
}

//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//

enum OrderTypeEnum {
  takeaway,
  delivery,
  local,
}

extension OrderTypeEnumString on OrderTypeEnum {
  String get rawValue => describeEnum(this);
}

//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//

enum PaymentTypeEnum {
  cash,
  card,
  bank_transfer,
}

extension PaymentTypeEnumString on PaymentTypeEnum {
  String get rawValue => describeEnum(this);
}

//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//

enum AlertsColorsEnum {
  success,
  info,
  warning,
  danger,
  dark,
}

extension AlertsColorsEnumString on AlertsColorsEnum {
  String get rawValue => describeEnum(this);
}

//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//

enum StoreTypeEnum {
  restaurant,
  store,
}

extension StoreTypeEnumString on StoreTypeEnum {
  String get rawValue => describeEnum(this);
}

//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//

enum ObjectTypeEnum {
  restaurant,
  store,
}

extension ObjectTypeEnumString on ObjectTypeEnum {
  String get rawValue => describeEnum(this);
}

//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//

enum ObjectableTypeEnum {
  Product,
  Store,
  Branch,
  Order,
}

extension ObjectableTypeEnumString on ObjectableTypeEnum {
  String get rawValue => describeEnum(this);
}

//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//

enum DeliveryTimeFormatEnum {
  m,
  h,
  d,
}

extension DeliveryTimeFormatEnumString on DeliveryTimeFormatEnum {
  String get rawValue => describeEnum(this);
}

//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//
//@@@@@@@@@@//@@@@@@@@@@//@@@@@@@@@@//

