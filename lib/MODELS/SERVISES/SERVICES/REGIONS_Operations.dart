import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled12/MODELS/CLASESS/KH_Helper.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@           KEIES            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

const String K_COUNTRY_NAME_KEY = "CountryName";
const String K_COUNTRY_ID_KEY = "CountryId";
//
const String K_CITY_NAME_KEY = "CityName";
const String K_CITY_ID_KEY = "CityId";
//
const String K_REGION_NAME_KEY = "RegionName";
const String K_REGION_ID_KEY = "RegionId";

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@      RegionsOperations     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class RegionsOperations {
  // COUNTRY
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@         SAVE  NAME         @@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static Future saveCountryNameToSharedPreference({
    required String? countryName,
  }) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (countryName != null) {
      await sharedPreferences.setString(K_COUNTRY_NAME_KEY, countryName);
    }
    KH_Helper.safePrint(
      "!!!!!!!!!! saved country name to shared is $countryName !!!!!!!!!!",
    );
  }

  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@         FETCH  NAME        @@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static Future<String?>? getCountryNameFromSharedPreference() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? countryName = sharedPreferences.getString(K_COUNTRY_NAME_KEY);
    KH_Helper.safePrint(
      "!!!!!!!!!! country name from shared is  $countryName !!!!!!!!!!",
    );
    return countryName;
  }

  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@          SAVE  ID          @@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static Future saveCountryIdToSharedPreference({
    required int? countryId,
  }) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (countryId != null) {
      await sharedPreferences.setInt(K_COUNTRY_ID_KEY, countryId);
    }
    KH_Helper.safePrint(
      "!!!!!!!!!! saved country id to shared is $countryId !!!!!!!!!!",
    );
  }

  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@          FETCH  ID         @@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static Future<int?>? getCountryIdFromSharedPreference() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    int? countryId = sharedPreferences.getInt(K_COUNTRY_ID_KEY);
    KH_Helper.safePrint(
      "!!!!!!!!!! country id from shared is  $countryId !!!!!!!!!!",
    );
    return countryId;
  }

  // CITY
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@         SAVE  NAME         @@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  static Future saveCityNameToSharedPreference({
    required String? cityName,
  }) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (cityName != null) {
      await sharedPreferences.setString(K_CITY_NAME_KEY, cityName);
    }
    KH_Helper.safePrint(
        "!!!!!!!!!! saved city name to shared is $cityName !!!!!!!!!!");
  }

  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@          FETCH  NAME       @@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  static Future<String?>? getCityNameFromSharedPreference() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? cityName = sharedPreferences.getString(K_CITY_NAME_KEY);
    KH_Helper.safePrint(
        "!!!!!!!!!! city name from shared is  $cityName !!!!!!!!!!");
    return cityName;
  }

  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@          SAVE  ID          @@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  static Future saveCityIdToSharedPreference({
    required int? cityId,
  }) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (cityId != null) {
      await sharedPreferences.setInt(K_CITY_ID_KEY, cityId);
    }
    KH_Helper.safePrint(
        "!!!!!!!!!! saved city id to shared is $cityId !!!!!!!!!!");
  }

  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@          FETCH  ID         @@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  static Future<int?>? getCityIdFromSharedPreference() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    int? cityId = sharedPreferences.getInt(K_CITY_ID_KEY);
    KH_Helper.safePrint(
        "!!!!!!!!!! city id from shared is  $cityId !!!!!!!!!!");
    return cityId;
  }

  // REGION
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@         SAVE  NAME         @@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  static Future saveRegionNameToSharedPreference({
    required String? regionName,
  }) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (regionName != null) {
      await sharedPreferences.setString(K_REGION_NAME_KEY, regionName);
    }
    KH_Helper.safePrint(
        "!!!!!!!!!! saved region name to shared is $regionName !!!!!!!!!!");
  }

  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@          FETCH  NAME       @@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  static Future<String?>? getRegionNameFromSharedPreference() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? regionName = sharedPreferences.getString(K_REGION_NAME_KEY);
    KH_Helper.safePrint(
        "!!!!!!!!!! region name from shared is  $regionName !!!!!!!!!!");
    return regionName;
  }

  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@          SAVE  ID          @@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  static Future saveRegionIdToSharedPreference({
    required int? regionId,
  }) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (regionId != null) {
      await sharedPreferences.setInt(K_REGION_ID_KEY, regionId);
    }
    KH_Helper.safePrint(
        "!!!!!!!!!! saved region id to shared is $regionId !!!!!!!!!!");
  }

  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@          FETCH  ID         @@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  static Future<int?>? getRegionIdFromSharedPreference() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    int? regionId = sharedPreferences.getInt(K_REGION_ID_KEY);
    KH_Helper.safePrint(
        "!!!!!!!!!! region id from shared is  $regionId !!!!!!!!!!");
    return regionId;
  }

// REMOVE
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@           REMOVE           @@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  static Future removeZikrFromSharedPreference() async {
    // SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    // KH_Helper.safePrint(
    //     "!!!!!!!!!! fraiday prayer zikr is removed From Shared Preference !!!!!!!!!!");
  }
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@           REMOVE           @@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
}
