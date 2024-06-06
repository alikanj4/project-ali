// ignore_for_file: camel_case_types, unused_local_variable

import 'package:url_launcher/url_launcher.dart';
import 'KH_Responsivness.dart';

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@         KH TOOOLS          @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

class KH_Tools {
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@         WHATS APP          @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static Future<void> openWhatsApp({
    required String phoneNumber,
    String message = "",
  }) async {
    //@@@@@@@//
    // var whatsappUrl = "whatsapp://send?phone=$phoneNumber&text=helloooo";
    //@@@@@@@//
    var urlAndroid = "whatsapp://send?phone=$phoneNumber&text=$message";
    var urlIos = "https://wa.me/$phoneNumber?text=${Uri.parse("$message")}";
    var encodedAndroid = Uri.encodeFull(urlAndroid);
    var encodedIos = Uri.encodeFull(urlIos);
    //@@@@@@@//
    // if(KH_Responsivenes.isIOS()){
    //   if (await canLaunch(encodedIos)) {
    //     await launch(encodedIos, forceSafariVC: false);
    //   } else {
    //     throw 'Could not launch $encodedIos';
    //   }
    // }else{
    //   if (await canLaunch(encodedAndroid)) {
    //     await launch(encodedAndroid);
    //   } else {
    //     throw 'Could not launch $encodedAndroid';
    //   }
    // }
    //@@@@@@@//
    //@@@@@@@//
    if (KH_Responsivenes.isIOS()) {
      final uri = Uri.parse(encodedIos);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        throw 'Could not launch $uri';
      }
    } else {
      final uri = Uri.parse(encodedAndroid);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        throw 'Could not launch $uri';
      }
    }
    //@@@@@@@//
    //@@@@@@@//
    // final uri = Uri.parse(url);
    // if (await canLaunchUrl(uri)) {
    //   await launchUrl(uri);
    // } else {
    //   throw 'Could not launch $url';
    // }
    //@@@@@@@//
    //@@@@@@@//
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@          WEB_SITE          @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static Future<void> openWebSite({
    required String url,
    bool insideTheApp = true,
  }) async {
    //@@@@@@@//
    //@@@@@@@//
    // if (await canLaunch(url)) {
    //   await launch(
    //     url,
    //     forceSafariVC: insideTheApp,
    //     forceWebView: insideTheApp,
    //     enableJavaScript: true,
    //   );
    // } else {
    //   throw 'Could not launch $url';
    // }
    //@@@@@@@//
    //@@@@@@@//
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: (insideTheApp == true)
            ? LaunchMode.inAppWebView
            : LaunchMode.platformDefault,
      );
    } else {
      throw 'Could not launch $uri';
    }
    //@@@@@@@//
    //@@@@@@@//
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@           E_MAIL           @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static Future<void> sendEmail({
    required String email,
    String title = "",
    String body = "",
  }) async {
    var url = 'mailto:$email?subject=$title&body=$body';
    var encoded = Uri.encodeFull(url);
    //@@@@@@@//
    //@@@@@@@//
    // if (await canLaunch(encoded)) {
    //   await launch(encoded);
    // } else {
    //   throw 'Could not launch $encoded';
    // }
    //@@@@@@@//
    //@@@@@@@//
    final uri = Uri.parse(encoded);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $uri';
    }
    //@@@@@@@//
    //@@@@@@@//
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@           PHONE            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static Future<void> callPhoneNumber({required String phoneNumber}) async {
    var url = "tel:$phoneNumber";
    var encoded = Uri.encodeFull(url);
    //@@@@@@@//
    //@@@@@@@//
    // if (await canLaunch(encoded)) {
    //   await launch(encoded);
    // } else {
    //   throw 'Could not launch $encoded';
    // }
    //@@@@@@@//
    //@@@@@@@//
    final uri = Uri.parse(encoded);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $uri';
    }
    //@@@@@@@//
    //@@@@@@@//
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@            SMS             @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static Future<void> sendSmsMessage({required String phoneNumber}) async {
    var url = "sms:$phoneNumber";
    var encoded = Uri.encodeFull(url);
    //@@@@@@@//
    //@@@@@@@//
    // if (await canLaunch(encoded)) {
    //   await launch(encoded);
    // } else {
    //   throw 'Could not launch $encoded';
    // }
    //@@@@@@@//
    //@@@@@@@//
    final uri = Uri.parse(encoded);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $uri';
    }
    //@@@@@@@//
    //@@@@@@@//
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@          FACEBOOK          @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static Future<void> openFaceBook({required String page}) async {
    //@@@@@@@//
    //@@@@@@@//
    // String fbProtocolUrl;
    // if (KH_Responsivenes.isIOS()) {
    //   fbProtocolUrl = 'fb://profile/$page';
    // } else {
    //   fbProtocolUrl = 'fb://page/$page';
    // }
    //@@@@@@@//
    //@@@@@@@//
    String fallbackUrl = 'https://www.facebook.com/$page';
    // try {
    //   bool launched = await launch(fallbackUrl, forceSafariVC: false);
    //   if (!launched) {
    //     await launch(fallbackUrl, forceSafariVC: false);
    //   }
    // } catch (e) {
    //   await launch(fallbackUrl, forceSafariVC: false);
    // }
    //@@@@@@@//
    //@@@@@@@//
    final uri = Uri.parse(fallbackUrl);
    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
    } else {
      throw 'Could not launch $uri';
    }
    //@@@@@@@//
    //@@@@@@@//
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@          TWITTER           @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static Future<void> openTwitter({required String page}) async {
    String fallbackUrl = 'https://www.twitter.com/$page';
    //@@@@@@@//
    //@@@@@@@//
    // try {
    //   bool launched = await launch(fallbackUrl, forceSafariVC: false);
    //   if (!launched) {
    //     await launch(fallbackUrl, forceSafariVC: false);
    //   }
    // } catch (e) {
    //   await launch(fallbackUrl, forceSafariVC: false);
    // }
    //@@@@@@@//
    //@@@@@@@//
    final uri = Uri.parse(fallbackUrl);
    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
    } else {
      throw 'Could not launch $uri';
    }
    //@@@@@@@//
    //@@@@@@@//
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@         INSTAGRAM          @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static Future<void> openInstagram({required String page}) async {
    String fallbackUrl = 'https://www.instagram.com/$page';
    // try {
    //   bool launched = await launch(fallbackUrl, forceSafariVC: false);
    //   if (!launched) {
    //     await launch(fallbackUrl, forceSafariVC: false);
    //   }
    // } catch (e) {
    //   await launch(fallbackUrl, forceSafariVC: false);
    // }
    //@@@@@@@//
    //@@@@@@@//
    final uri = Uri.parse(fallbackUrl);
    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
    } else {
      throw 'Could not launch $uri';
    }
    //@@@@@@@//
    //@@@@@@@//
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@         SNAP SHAT          @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static Future<void> openSnapShat({required String page}) async {
    //@@@@@@@//
    //@@@@@@@//
    String snpShatProtocolUrl;
    if (KH_Responsivenes.isIOS()) {
      snpShatProtocolUrl = 'snapchat://add/$page';
    } else {
      snpShatProtocolUrl = 'snapchat://add/$page';
      // "snapchat://add/snapchatUsername"
    }
    String fallbackUrl = 'https://www.snapchat.com/add/$page';
    //@@@@@@@//
    //@@@@@@@//
    // try {
    //   bool launched = await launch(snpShatProtocolUrl, forceSafariVC: false);
    //   if (!launched) {
    //     await launch(fallbackUrl, forceSafariVC: false);
    //   }
    // } catch (e) {
    //   await launch(fallbackUrl, forceSafariVC: false);
    // }
    //@@@@@@@//
    //@@@@@@@//
    final uri = Uri.parse(fallbackUrl);
    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
    } else {
      throw 'Could not launch $uri';
    }
    //@@@@@@@//
    //@@@@@@@//
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@        GOOGLE MAPS         @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static Future<void> openGoogleMaps({
    required String latitude,
    required String longitude,
  }) async {
    // final String googleMapsUrl = "comgooglemaps://?center=$latitude,$longitude";
    final String googleMapsUrl =
        "http://maps.google.com/maps?q=$latitude,$longitude";
    final String appleMapsUrl =
        "https://maps.apple.com/?q=$latitude,$longitude";
    //@@@@@@@//
    //@@@@@@@//
    //@@@@@@@//
    // if (await canLaunch(googleMapsUrl)) {
    //   await launch(googleMapsUrl);
    // }
    // if (await canLaunch(appleMapsUrl)) {
    //   await launch(appleMapsUrl, forceSafariVC: false);
    // } else {
    //   throw "Couldn't launch URL";
    // }
    //@@@@@@@//
    //@@@@@@@//
    //@@@@@@@//
    final googleuri = Uri.parse(googleMapsUrl);
    final appleuri = Uri.parse(appleMapsUrl);

    if (await canLaunchUrl(googleuri)) {
      await launchUrl(
        googleuri,
        mode: LaunchMode.externalApplication,
      );
    } else {
      throw 'Could not launch $googleuri';
    }

    if (await canLaunchUrl(appleuri)) {
      await launchUrl(
        appleuri,
        mode: LaunchMode.externalApplication,
      );
    } else {
      throw 'Could not launch $appleuri';
    }

    //@@@@@@@//
    //@@@@@@@//
    //@@@@@@@//
    // var url = "https://www.google.com/maps/search/?api=1&query=$latitude,$longitude";
    // var url = "geo:$latitude,$longitude";
    // 'http://maps.apple.com/?ll=52.32,4.917';

    // var encoded = Uri.encodeFull(url);

    // if (await canLaunch(encoded)) {
    //   await launch(encoded);
    // } else {
    //   throw 'Could not launch $encoded';
    // }
    //@@@@@@@//
    //@@@@@@@//
    //@@@@@@@//
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
}
