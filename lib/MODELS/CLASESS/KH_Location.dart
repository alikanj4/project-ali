// ignore_for_file: camel_case_types

import 'package:flutter/foundation.dart';
// import 'package:flutter_dozo_store/MODELS/CLASSES/KH_Helper.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:untitled12/MODELS/CLASESS/KH_Helper.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@        KH_Location         @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class KH_Location {
  //@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@
  //@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@  DEPRECATED !
  //@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@

  static Future<Position> getUserLocation() async {
    bool serviceEnabled;
    LocationPermission permission;
    //@@@@@@@@@@@@//
    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }
    //@@@@@@@@@@@@//
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // handle appropriately.
        return Future.error('Location permissions are denied');
      }
    }
    //@@@@@@@@@@@@//
    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    //@@@@@@@@@@@@//
    Position userLocation = await Geolocator.getCurrentPosition();
    double latiTude = userLocation.latitude;
    double longiTude = userLocation.longitude;
    KH_Helper.safePrint("                     ");
    KH_Helper.safePrint("GOT USER LOCATION");
    KH_Helper.safePrint("LAT : $latiTude");
    KH_Helper.safePrint("LONG : $longiTude");
    KH_Helper.safePrint("                     ");
    return userLocation;
    //@@@@@@@@@@@@//
  }

  //@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@
  //@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@  USER LOCATION
  //@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@

  static Future<UserLocationResponse> requestUserLocation() async {
    bool serviceEnabled;
    LocationPermission permission;
    //@@@@@@@@@@@@//
    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return UserLocationResponse(
        isSuccessful: false,
        permissionType: UserLocationPermissionEnum.NoLocationService,
      );
    }
    //@@@@@@@@@@@@//
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // handle appropriately.
        return UserLocationResponse(
          isSuccessful: false,
          permissionType: UserLocationPermissionEnum.Denied,
        );
      }
    }
    //@@@@@@@@@@@@//
    if (permission == LocationPermission.deniedForever) {
      return UserLocationResponse(
        isSuccessful: false,
        permissionType: UserLocationPermissionEnum.DeniedForEver,
      );
    }
    //@@@@@@@@@@@@//
    Position userLocation = await Geolocator.getCurrentPosition();
    double latiTude = userLocation.latitude;
    double longiTude = userLocation.longitude;
    KH_Helper.safePrint("                     ");
    KH_Helper.safePrint("GOT USER LOCATION");
    KH_Helper.safePrint("LAT : $latiTude");
    KH_Helper.safePrint("LONG : $longiTude");
    KH_Helper.safePrint("                     ");
    return UserLocationResponse(
      isSuccessful: true,
      permissionType: UserLocationPermissionEnum.Allowed,
      userPosition: userLocation,
    );
    //@@@@@@@@@@@@//
  }

  //@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@
  //@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@  USER ADDRESS
  //@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@

  static Future<Placemark> getAddressFromLocation({
    required double latitude,
    required double longtude,
  }) async {
    // final langugeCode = await KH_Languages.getHeaderLanguageCode();
    List<Placemark> addresses = await placemarkFromCoordinates(
      latitude,
      longtude,
      // localeIdentifier: langugeCode,
    );
    KH_Helper.safePrint("                     ");
    KH_Helper.safePrint("#####################");
    KH_Helper.safePrint("GOT ADDRESS");
    KH_Helper.safePrint(addresses.first.locality);
    KH_Helper.safePrint(addresses.first.name);
    KH_Helper.safePrint(addresses.first.street);
    KH_Helper.safePrint(addresses.first.postalCode);
    KH_Helper.safePrint(addresses.first.subAdministrativeArea);
    KH_Helper.safePrint("#####################");
    KH_Helper.safePrint("                     ");
    return addresses.first;
  }

  //@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@
  //@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@  DISTINATION BETWEEN 2 POINTs
  //@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@

  static getDistinceBetween2Points({
    required double firstLat,
    required double firstLong,
    required double secondLat,
    required double fsecondLong,
  }) {
    double distanceInMeters = Geolocator.distanceBetween(
      firstLat,
      firstLong,
      secondLat,
      fsecondLong,
    );
    KH_Helper.safePrint("                     ");
    KH_Helper.safePrint("GOT DISTINCE IN METERS");
    KH_Helper.safePrint("$distanceInMeters  meters");
    KH_Helper.safePrint("                     ");
  }

  //@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@
  //@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@  DISTINATION BETWEEN 2 POINTs
  //@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@        KH_Location         @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

enum UserLocationPermissionEnum {
  Allowed,
  Denied,
  DeniedForEver,
  NoLocationService,
}

extension UserLocationPermissionEnumString on UserLocationPermissionEnum {
  String get rawValue => describeEnum(this);
}

class UserLocationResponse {
  final bool isSuccessful;
  final UserLocationPermissionEnum permissionType;
  final Position? userPosition;
  UserLocationResponse({
    required this.isSuccessful,
    required this.permissionType,
    this.userPosition,
  });
}
