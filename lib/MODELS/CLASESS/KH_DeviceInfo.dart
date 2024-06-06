import 'dart:io' show Platform;
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/services.dart';
import 'package:untitled12/MODELS/CLASESS/KH_Helper.dart';

//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//
//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//
//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//
//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//

// ignore: camel_case_types
class KH_DeviceInfo {
  //@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//
  static Future<DeviceInfoObject> getDeviceDetails() async {
    String? deviceName;
    String? deviceVersion;
    String? identifier;
    final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    try {
      if (Platform.isAndroid) {
        var build = await deviceInfoPlugin.androidInfo;
        deviceName = build.model;
        deviceVersion = build.version.toString();
        identifier = build.serialNumber; //UUID for Android
      } else if (Platform.isIOS) {
        var data = await deviceInfoPlugin.iosInfo;
        deviceName = data.name;
        deviceVersion = data.systemVersion;
        identifier = data.identifierForVendor; //UUID for iOS
      }
    } on PlatformException {
      KH_Helper.safePrint('Failed to get platform version');
    }

    //if (!mounted) return;
    // return [deviceName, deviceVersion, identifier];

    KH_Helper.safePrint("                ");
    KH_Helper.safePrint("@@@@@@@@@@@@@@@@");
    KH_Helper.safePrint("DEVICE UID : $identifier");
    KH_Helper.safePrint("DEVICE NAME : $deviceName");
    KH_Helper.safePrint("DEVICE VERSION : $deviceVersion");
    KH_Helper.safePrint("@@@@@@@@@@@@@@@@");
    KH_Helper.safePrint("                ");

    return DeviceInfoObject(
      uid: identifier ?? "UID",
      deviceName: deviceName ?? "deviceName",
      deviceVersion: deviceVersion ?? "deviceVersion",
    );
  }
  //@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//
}

//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//
//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//
//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//
//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//

class DeviceInfoObject {
  final String uid;
  final String deviceName;
  final String deviceVersion;

  DeviceInfoObject({
    required this.uid,
    required this.deviceName,
    required this.deviceVersion,
  });
}

//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//
//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//
//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//
//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//@@@@@@@@@@@@//
