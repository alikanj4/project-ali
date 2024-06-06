// ignore_for_file: camel_case_types

import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:untitled12/MODELS/CLASESS/KH_Helper.dart';

class KH_OneSignal {
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@        PLAYER ID           @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static Future<String> getOneSignalPlayerId() async {
    // var status = await OneSignal.shared.getDeviceState();
    // var playerId = status?.userId;
    // return playerId ?? "OneSignalID";
    //@@@@@@@@//
    //@@@@@@@@//
    // var token = OneSignal.User.pushSubscription.token;
    // var optedIn = OneSignal.User.pushSubscription.optedIn;
    var id = OneSignal.User.pushSubscription.id;
    KH_Helper.safePrint("              ");
    KH_Helper.safePrint("@@@@@@@@@@@@@@");
    KH_Helper.safePrint("ONE SIGNAL ID : $id");
    KH_Helper.safePrint("@@@@@@@@@@@@@@");
    KH_Helper.safePrint("              ");
    return id ?? "OneSignalID";
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@        SEND   TAGS         @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static Future<void> sendOneSignalTags(
      {required Map<String, dynamic> tagsMap}) async {
    // await OneSignal.shared.sendTags(tagsMap);
    // await OneSignal.shared.sendTags({"test_key_1": "test_value_1", "test_key_2": "test_value_2"});
    await OneSignal.User.addTags(tagsMap);
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@       DELETE   TAGS        @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static Future<void> deleteOneSignalTags(
      {required List<String> tagsList}) async {
    // await OneSignal.shared.deleteTags(tagsList);
    // await OneSignal.shared.deleteTags(["test_key_1", "test_key_2"]);
    await OneSignal.User.removeTags(tagsList);
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@         GET  TAGS          @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  // static Future<Map<String, dynamic>> getOneSignalTags() async {
  //   Map<String, dynamic> tags = await OneSignal.shared.getTags();
  //   for (var item in tags.keys) {
  //     KH_Helper.safePrint("              ");
  //     KH_Helper.safePrint("@@@@@@@@@@@@@@");
  //     KH_Helper.safePrint(tags[item]);
  //     KH_Helper.safePrint("@@@@@@@@@@@@@@");
  //     KH_Helper.safePrint("              ");
  //   }
  //   return tags;
  //   // Map<String, dynamic> tags = await OneSignal.shared.getTags();
  // }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
}
