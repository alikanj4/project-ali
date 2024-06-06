import 'dart:convert';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'package:http/http.dart' as HTTP;
import 'package:untitled12/MODELS/CLASESS/KH_Helper.dart';
import 'package:untitled12/MODELS/CLASESS/KH_Languages.dart';
import 'package:untitled12/MODELS/SERVISES/SERVICES/Constants.dart';

enum RequestsTypeEnum {
  Get,
  Post,
  Put,
  Delete,
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@      API_Operations        @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// class to handel all api related operations

// ignore: camel_case_types
class API_Operations {
  // ignore: non_constant_identifier_names
  static Future<KH_API_RESPONSE> make_API_request({
    required String theUrl,
    required RequestsTypeEnum therequestType,
    required Map<String, String> theHeader,
    required dynamic theparameters,
    bool? isCurrencyRequest = false,
  }) async {
    String url = K_APP_BASE_URL + theUrl;
    var urlll = Uri.https(K_APP_BASE_URL, theUrl);
    // var urlll = Uri.http(K_APP_BASE_URL, theUrl);

    // String url = isCurrencyRequest == true ? theUrl : K_APP_BASE_URL + theUrl;
    // var urlll = isCurrencyRequest == true
    //     ? Uri.parse(theUrl)
    //     : Uri.https(K_APP_BASE_URL, theUrl);

    KH_Helper.safePrint("Making a $therequestType request with url : $url");
    HTTP.Response? response;

    try {
      if (therequestType == RequestsTypeEnum.Get) {
        response = await HTTP.get(urlll, headers: theHeader);
      } else if (therequestType == RequestsTypeEnum.Post) {
        response =
            await HTTP.post(urlll, headers: theHeader, body: theparameters);
      } else if (therequestType == RequestsTypeEnum.Put) {
        response =
            await HTTP.put(urlll, headers: theHeader, body: theparameters);
      } else if (therequestType == RequestsTypeEnum.Delete) {
        response = await HTTP.delete(urlll, headers: theHeader);
      }

      if (response == null) {
        return KH_API_RESPONSE(isRequestSuccessfull: false);
      }

      final body = response.body;
      final jsonBody = jsonDecode(body);

      KH_Helper.safePrint("\n\n@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n\n");
      KH_Helper.safePrint("response.statusCode : ${response.statusCode}");
      KH_Helper.safePrint("response.body : $jsonBody");
      KH_Helper.safePrint("\n\n@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n\n");

      if (response.statusCode == 200) {
        return KH_API_RESPONSE(
            isRequestSuccessfull: true,
            errorMessage: null,
            theResponse: response);
      } else if (response.statusCode == 400) {
        return KH_API_RESPONSE(
            isRequestSuccessfull: false,
            errorMessage: "Bad Request",
            theResponse: null);
      } else if (response.statusCode == 401 || response.statusCode == 403) {
        return KH_API_RESPONSE(
            isRequestSuccessfull: false,
            // errorMessage: "You Are Not Authorized To Access These Informations",
            errorMessage:
                "لقد انتهت صلاحية جلستك ، يرجى تسجيل الخروج أولاً ثم معاودة تسجيل الدخول مرة أخرى",
            theResponse: null);
      } else if (response.statusCode == 404) {
        return KH_API_RESPONSE(
            isRequestSuccessfull: false,
            errorMessage: "We Could Not Find The Info You Requested",
            theResponse: null);
      } else if (response.statusCode == 408) {
        return KH_API_RESPONSE(
            isRequestSuccessfull: false,
            errorMessage: "Time Out , This Request Is Taking Too Much Time",
            theResponse: null);
      } else if (response.statusCode == 429) {
        return KH_API_RESPONSE(
            isRequestSuccessfull: false,
            errorMessage: "You Made So Many Requests",
            theResponse: null);
      } else if (response.statusCode >= 500) {
        return KH_API_RESPONSE(
            isRequestSuccessfull: false,
            errorMessage: "Server Error",
            theResponse: null);
      } else {
        return KH_API_RESPONSE(
            isRequestSuccessfull: false,
            errorMessage: "Un Known Error",
            theResponse: null);
      }
    } catch (error) {
      KH_Helper.safePrint("\n\n@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n\n");
      KH_Helper.safePrint(error);
      KH_Helper.safePrint(error.toString());
      KH_Helper.safePrint("\n\n@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n\n");

      var internetStatus = await _isConnectedToInternet();
      bool isEnglish = await KH_Languages.isEnglishLanguage();

      if (internetStatus == false) {
        return KH_API_RESPONSE(
          isRequestSuccessfull: false,
          isInternetDisConnected: true,
          errorMessage: isEnglish
              ? "Please check your intenet connection"
              : "لطفا تحقق من اتصالك بشبكة الإنترنت",
          theResponse: null,
        );
      } else {
        return KH_API_RESPONSE(
            isRequestSuccessfull: false,
            errorMessage: error.toString(),
            theResponse: null);
      }
    }
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@    INTERNET CONNECTION     @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

// check if user is connected to internet
  static Future<bool> _isConnectedToInternet() async {
    var connectionStatus = await (Connectivity().checkConnectivity());

    if (connectionStatus == ConnectivityResult.none) {
      KH_Helper.safePrint("NO CONNECTION");
      return false;
    } else if (connectionStatus == ConnectivityResult.mobile) {
      KH_Helper.safePrint("4G CONNECTION");
      return true;
    } else {
      KH_Helper.safePrint("WIFI CONNECTION");
      return true;
    }
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@        API HEADER          @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static Future<Map<String, String>> getHeaderWithoutToken() async {
    final String localname = await KH_Languages.getHeaderLanguageCode();
    // String lang = "ar";
    // if (localname.contains("en")) {
    //   lang = "en";
    // } else {
    //   lang = "ar";
    // }

    KH_Helper.safePrint("====================");
    KH_Helper.safePrint("HEADER LAND IS : $localname");
    KH_Helper.safePrint("====================");

    final Map<String, String> header = {
      "Accept": "application/json",
      "X-Requested-With": "XMLHttpRequest",
      "Content-type": "application/json",
      "X-Accept-Language": localname,
      "Accept-Language": localname,
      // "Authorization" : TKN,
      "Api-Password": K_API_PASSWORD,
    };

    return header;
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@        API HEADER          @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static Future<Map<String, String>> getHeaderWithToken() async {
    // final token = await LocalAuthOperations.getCurrentUserToken() ?? "";
    final String localname = await KH_Languages.getHeaderLanguageCode();
    // String lang = "ar";
    // if (localname.contains("en")) {
    //   lang = "en";
    // } else {
    //   lang = "ar";
    // }
    KH_Helper.safePrint("====================");
    KH_Helper.safePrint("HEADER LAND IS : $localname");
    // KH_Helper.safePrint("HEADER TOKEN IS : $token");
    KH_Helper.safePrint("====================");

    final Map<String, String> header = {
      "Accept": "application/json",
      "X-Requested-With": "XMLHttpRequest",
      "Content-type": "application/json",
      "X-Accept-Language": localname,
      "Accept-Language": localname,
      // "Authorization": token,
      "Api-Password": K_API_PASSWORD,
    };

    return header;
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@      KH_API_RESPONSE       @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// class to deal with the responses of apis

// ignore: camel_case_types
class KH_API_RESPONSE {
  final bool isRequestSuccessfull;
  final bool isInternetDisConnected;
  final String? errorMessage;
  final HTTP.Response? theResponse;

  KH_API_RESPONSE({
    required this.isRequestSuccessfull,
    this.isInternetDisConnected = false,
    this.errorMessage,
    this.theResponse,
  });
}

// ignore: camel_case_types
class KH_API_SERIALIZED_RESPONSE<T> {
  final bool isRequestSuccessfull;
  final bool isInternetDisConnected;
  final String? responseMessage;
  final T? theResponseData;

  KH_API_SERIALIZED_RESPONSE({
    this.isRequestSuccessfull = true,
    this.isInternetDisConnected = false,
    this.responseMessage,
    this.theResponseData,
  });
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@   General Appp Response    @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// use with meny responses

class GeneralAppResponse {
  bool? status;
  String? message;
  List<String>? errors;

  GeneralAppResponse({
    this.status,
    this.message,
    this.errors,
  });

  GeneralAppResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    errors = json['errors'] != null ? json['errors'].cast<String>() : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['errors'] = this.errors;
    return data;
  }
}

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

/* 
class ObjectStatusAPI {

  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

  static Future<KH_API_SERIALIZED_RESPONSE> changeObjectStatus({
    required ModelEnum model,
    required String modelId,
    required ModelStatusTypeEnum statusType,
    required bool? statusNewValue,
  }) async {
    //========================//
    //========================//
    final param = {
      "device_type": KH_Responsivenes.getPlatform(),
      "api_password": K_API_PASSWORD,
      "model": model.rawValue,
      "model_id": modelId,
      "type": statusType.rawValue,
      "value": statusNewValue
    };
    var body = json.encode(param);
    //========================//
    //========================//
    final KH_API_RESPONSE khResponse = await API_Operations.make_API_request(
      theUrl: K_EDIT_OBJECT_STATUS_URL,
      therequestType: RequestsTypeEnum.Post,
      theHeader: await API_Operations.getHeaderWithToken(),
      theparameters: body,
    );
    //========================//
    //========================//
    if (khResponse.isRequestSuccessfull) {
      if (khResponse.theResponse != null) {
        final body = khResponse.theResponse?.body;
        if (body != null) {
          //========================//
          //========================//
          final jsonBody = jsonDecode(body);
          GeneralAppResponse generalAppResponse =
              GeneralAppResponse.fromJson(jsonBody);
          //========================//
          //========================//
          return KH_API_SERIALIZED_RESPONSE(
            theResponseData: generalAppResponse,
          );
          //========================//
          //========================//
        } else {
          return KH_API_SERIALIZED_RESPONSE(
            isRequestSuccessfull: false,
            responseMessage: khResponse.errorMessage,
          );
        }
      } else {
        return KH_API_SERIALIZED_RESPONSE(
          isRequestSuccessfull: false,
          responseMessage: khResponse.errorMessage,
        );
      }
    } else {
      if (khResponse.isInternetDisConnected) {
        return KH_API_SERIALIZED_RESPONSE(
          isRequestSuccessfull: false,
          isInternetDisConnected: true,
          responseMessage: khResponse.errorMessage,
        );
      } else {
        return KH_API_SERIALIZED_RESPONSE(
          isRequestSuccessfull: false,
          responseMessage: khResponse.errorMessage,
        );
      }
    }
  }

  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
  //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

} */


