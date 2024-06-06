// // ignore_for_file: non_constant_identifier_names

// import 'dart:convert';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:untitled12/MODELS/CLASESS/KH_Helper.dart';
// import 'Constants.dart';
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@      constants urls        @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

// //@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//
// const K_MOBILE_LOG_IN_URL = "/api/user/login";
// const K_LOG_IN_REGISTER_URL = "/api/user/loginRegister";
// const K_EMAIL_LOG_IN_URL = "/api/user/login";
// //@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//
// const K_MOBILE_REGISTER_URL = "/api/user/register";
// const K_EMAIL_REGISTER_URL = "/api/user/register";
// //@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//
// const K_MOBILE_CODE_REQUEST_URL = "/api/user/otp";
// const K_EMAIL_CODE_REQUEST_URL = "/api/user/otp";
// //@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//
// const K_MOBILE_UPDATE_PASSWORD_URL = "/api/user/reset-password";
// const K_EMAIL_UPDATE_PASSWORD_URL = "/api/user/reset-password";
// //@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//@@@@@@@@@@@@@@@//
// const K_LOG_OUT_URL = "/api/user/logout";

// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@        AuthResponse        @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

// class AuthResponse {
//   bool? status;
//   String? message;
//   String? unreadNotifications;
//   List<String>? errors;
//   UserObject? user;
//   String? token;
//   String? otp;

//   AuthResponse({
//     this.status,
//     this.message,
//     this.unreadNotifications,
//     this.errors,
//     this.user,
//     this.token,
//     this.otp,
//   });

//   AuthResponse.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     message = json['message'];
//     unreadNotifications = json['unreadNotifications'];
//     errors = json['errors'] != null ? json['errors'].cast<String>() : null;
//     user = json['user'] != null ? UserObject.fromJson(json['user']) : null;
//     token = json['token'];
//     otp = json['otp'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status'] = this.status;
//     data['message'] = this.message;
//     data['unreadNotifications'] = this.unreadNotifications;
//     data['errors'] = this.errors;
//     if (this.user != null) {
//       data['user'] = this.user?.toJson();
//     }
//     data['token'] = this.token;
//     data['otp'] = this.otp;
//     return data;
//   }
// }

// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@    LocalAuthOperations     @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@    LocalAuthOperations     @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@    LocalAuthOperations     @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

// const String K_IS_USER_GUEST_KEY = "isUserLoggedInAsGuest";
// const String K_IS_USER_LOGGED_IN_KEY = "isUserLoggedIn";
// const String K_CURRENT_USER_UID_KEY = "currentUserUID";
// const String K_CURRENT_USER_NAME_KEY = "currentUserName";
// const String K_CURRENT_USER_EMAIL_KEY = "currentUserEmail";
// const String K_CURRENT_USER_TOKEN_KEY = "currentUserToken";
// const String K_CURRENT_USER_COUNTRY_ID_KEY = "currentUserCountryId";
// const String K_CURRENT_USER_CITY_ID_KEY = "currentUserCityId";
// const String K_CURRENT_USER_PHONE_NUMBER_KEY = "currentUserPhoneNumber";
// const String K_CURRENT_USER_TYPE_KEY = "currentUserType";
// const String K_DID_USER_SEE_ONBOARDING_SCREEN_KEY = "didUserSeeOnBoarding";

// class LocalAuthOperations {
//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@           SAVE             @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

//   static Future saveUserInfoToSharedPreference({
//     required String uid,
//     required String name,
//     required String email,
//     required String token,
//     required CurrentUserType currentUserType,
//     required int countryId,
//     required int cityId,
//     required String phoneNumber,
//   }) async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     // ================== //
//     // if (currentUserType == CurrentUserType.customer) {
//     //   await sharedPreferences.setBool(K_IS_USER_LOGGED_IN_KEY, true);
//     //   await sharedPreferences.setBool(K_IS_USER_GUEST_KEY, false);
//     // } else if (currentUserType == CurrentUserType.provider) {
//     //   await sharedPreferences.setBool(K_IS_USER_LOGGED_IN_KEY, true);
//     //   await sharedPreferences.setBool(K_IS_USER_GUEST_KEY, false);
//     // } else if (currentUserType == CurrentUserType.admin) {
//     //   await sharedPreferences.setBool(K_IS_USER_LOGGED_IN_KEY, true);
//     //   await sharedPreferences.setBool(K_IS_USER_GUEST_KEY, false);
//     // } else {
//     //   await sharedPreferences.setBool(K_IS_USER_GUEST_KEY, true);
//     //   await sharedPreferences.setBool(K_IS_USER_LOGGED_IN_KEY, false);
//     // }
//     if (currentUserType == CurrentUserType.guest) {
//       await sharedPreferences.setBool(K_IS_USER_GUEST_KEY, true);
//       await sharedPreferences.setBool(K_IS_USER_LOGGED_IN_KEY, false);
//     } else {
//       await sharedPreferences.setBool(K_IS_USER_LOGGED_IN_KEY, true);
//       await sharedPreferences.setBool(K_IS_USER_GUEST_KEY, false);
//     }
//     // ================== //
//     await sharedPreferences.setString(K_CURRENT_USER_UID_KEY, uid);
//     await sharedPreferences.setString(K_CURRENT_USER_NAME_KEY, name);
//     await sharedPreferences.setString(K_CURRENT_USER_EMAIL_KEY, email);
//     await sharedPreferences.setString(K_CURRENT_USER_TOKEN_KEY, token);
//     await sharedPreferences.setInt(K_CURRENT_USER_COUNTRY_ID_KEY, countryId);
//     await sharedPreferences.setInt(K_CURRENT_USER_CITY_ID_KEY, cityId);
//     await sharedPreferences.setString(
//         K_CURRENT_USER_PHONE_NUMBER_KEY, phoneNumber);
//     await sharedPreferences.setString(
//         K_CURRENT_USER_TYPE_KEY, currentUserType.rawValue);
//     // ================== //
//     KH_Helper.safePrint("#########################");
//     KH_Helper.safePrint("#########################");
//     KH_Helper.safePrint("SAVED USER DATA TO SHARED PREFERENCE");
//     KH_Helper.safePrint("USER TYPE : ${currentUserType.rawValue}");
//     KH_Helper.safePrint("USER UID : $uid");
//     KH_Helper.safePrint("USER NAME : $name");
//     KH_Helper.safePrint("USER EMAIL : $email");
//     KH_Helper.safePrint("USER TOKEN = $token");
//     KH_Helper.safePrint("USER COUNTRY : $countryId");
//     KH_Helper.safePrint("USER CITY : $cityId");
//     KH_Helper.safePrint("USER PHONE : $phoneNumber");
//     KH_Helper.safePrint("#########################");
//     KH_Helper.safePrint("#########################");
//   }

//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@           FETCH            @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

//   static Future<CurrentUserObject?> getCurrentUserObjectInfo() async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     // ================== //
//     String? uidd = sharedPreferences.getString(K_CURRENT_USER_UID_KEY);
//     String? namee = sharedPreferences.getString(K_CURRENT_USER_NAME_KEY);
//     String? emaill = sharedPreferences.getString(K_CURRENT_USER_EMAIL_KEY);
//     String? tokken = sharedPreferences.getString(K_CURRENT_USER_TOKEN_KEY);
//     String? phonee =
//         sharedPreferences.getString(K_CURRENT_USER_PHONE_NUMBER_KEY);
//     String? typee = sharedPreferences.getString(K_CURRENT_USER_TYPE_KEY);
//     //=======//
//     int? countryId = sharedPreferences.getInt(K_CURRENT_USER_COUNTRY_ID_KEY);
//     int? cityId = sharedPreferences.getInt(K_CURRENT_USER_CITY_ID_KEY);
//     // ================== //
//     KH_Helper.safePrint("#########################");
//     KH_Helper.safePrint("#########################");
//     KH_Helper.safePrint("GOT USER DATA FROM SHARED PREFERENCE");
//     // KH_Helper.safePrint("USER TYPE : ${isGuest == true ? "GUEST" : "CUSTOMER"}");
//     KH_Helper.safePrint("USER TYPE : $typee");
//     KH_Helper.safePrint("USER UID : $uidd");
//     KH_Helper.safePrint("USER NAME : $namee");
//     KH_Helper.safePrint("USER EMAIL : $emaill");
//     KH_Helper.safePrint("USER TOKEN = $tokken");
//     KH_Helper.safePrint("USER COUNTRY : $countryId");
//     KH_Helper.safePrint("USER CITY : $cityId");
//     KH_Helper.safePrint("USER PHONE : $phonee");
//     KH_Helper.safePrint("#########################");
//     KH_Helper.safePrint("#########################");
//     // ================== //
//     if (uidd != null &&
//         namee != null &&
//         emaill != null &&
//         tokken != null &&
//         countryId != null &&
//         cityId != null &&
//         phonee != null &&
//         typee != null) {
//       var type = CurrentUserType.customer;
//       if (typee == CurrentUserType.customer.rawValue) {
//         type = CurrentUserType.customer;
//         KH_Helper.safePrint("USER IS CUSTOMER");
//       } else if (typee == CurrentUserType.provider.rawValue) {
//         type = CurrentUserType.provider;
//         KH_Helper.safePrint("USER IS PROVIDER");
//       } else if (typee == CurrentUserType.guest.rawValue) {
//         type = CurrentUserType.guest;
//         KH_Helper.safePrint("USER IS GUEST");
//       } else if (typee == CurrentUserType.admin.rawValue) {
//         type = CurrentUserType.admin;
//         KH_Helper.safePrint("USER IS ADMIN");
//       }

//       // if (isLoggedIn == true) {
//       //   type = CurrentUserType.customer;
//       //   KH_Helper.safePrint("USER IS CUSTOMER");
//       // } else if (isGuest == true) {
//       //   type = CurrentUserType.guest;
//       //   KH_Helper.safePrint("USER IS GUEST");
//       // }

//       return CurrentUserObject(
//         uid: uidd,
//         name: namee,
//         email: emaill,
//         token: tokken,
//         currentUserType: type,
//         countryId: countryId,
//         cityId: cityId,
//         phoneNumber: phonee,
//       );
//     } else {
//       return null;
//     }
//     // ================== //
//   }

//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@           REMOVE           @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

//   static Future<bool> removeUserInfoFromSharedPreference() async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     await sharedPreferences.remove(K_IS_USER_LOGGED_IN_KEY);
//     await sharedPreferences.remove(K_IS_USER_GUEST_KEY);
//     await sharedPreferences.remove(K_CURRENT_USER_UID_KEY);
//     await sharedPreferences.remove(K_CURRENT_USER_NAME_KEY);
//     await sharedPreferences.remove(K_CURRENT_USER_EMAIL_KEY);
//     await sharedPreferences.remove(K_CURRENT_USER_TOKEN_KEY);
//     await sharedPreferences.remove(K_CURRENT_USER_COUNTRY_ID_KEY);
//     await sharedPreferences.remove(K_CURRENT_USER_CITY_ID_KEY);
//     await sharedPreferences.remove(K_CURRENT_USER_PHONE_NUMBER_KEY);
//     await sharedPreferences.remove(K_CURRENT_USER_TYPE_KEY);
//     KH_Helper.safePrint("#########################");
//     KH_Helper.safePrint("#########################");
//     KH_Helper.safePrint("REMOVED USER DATA FROM SHARED PREFERENCE");
//     KH_Helper.safePrint("#########################");
//     KH_Helper.safePrint("#########################");
//     return true;
//   }

//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@           CHECK            @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

//   static Future<bool> isCurrentUserLoggedIn() async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     bool? isLoggedIn = sharedPreferences.getBool(K_IS_USER_LOGGED_IN_KEY);
//     if (isLoggedIn == true) {
//       return true;
//     }
//     return false;
//   }

//   static Future<bool> isCurrentUserGuest() async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     bool? isGuest = sharedPreferences.getBool(K_IS_USER_GUEST_KEY);
//     if (isGuest == true) {
//       return true;
//     }
//     return false;
//   }

//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@           TOKEN            @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

//   static Future<String?> getCurrentUserToken() async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     return sharedPreferences.getString(K_CURRENT_USER_TOKEN_KEY);
//   }

//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@           UID              @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

//   static Future<String?> getCurrentUserUid() async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     return sharedPreferences.getString(K_CURRENT_USER_UID_KEY);
//   }

//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@       COUNTRY UID          @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

//   static Future<int?> getCurrentUserCountryId() async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     return sharedPreferences.getInt(K_CURRENT_USER_COUNTRY_ID_KEY);
//   }

//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@         CITY UID           @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

//   static Future<int?> getCurrentUserCityId() async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     return sharedPreferences.getInt(K_CURRENT_USER_CITY_ID_KEY);
//   }

//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@       ON BOARDING          @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

//   static Future saveOnBoardingStatus({bool newStatus = true}) async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     await sharedPreferences.setBool(
//       K_DID_USER_SEE_ONBOARDING_SCREEN_KEY,
//       newStatus,
//     );
//   }

//   //===============//

//   static Future<bool> didUserSeeOnBoardingScreen() async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     bool? didSee =
//         sharedPreferences.getBool(K_DID_USER_SEE_ONBOARDING_SCREEN_KEY);
//     if (didSee == true) {
//       return true;
//     }
//     return false;
//   }

//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@       GUEST LOG IN         @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

//   static Future logInUserAsGuest({
//     required BuildContext context,
//     required int countryID,
//     required int cityID,
//   }) async {
//     saveUserInfoToSharedPreference(
//       uid: "00",
//       name: "مستخدم ضيف",
//       email: "guest@dozo.store.app.com",
//       token: K_GUEST_TOKEN,
//       currentUserType: CurrentUserType.guest,
//       countryId: countryID,
//       cityId: cityID,
//       phoneNumber: "+9661234567891011",
//     ).then((_) => {
//           Navigator.pushNamedAndRemoveUntil(
//             context,
//             // TempAppScreen.routName,
//             TabBarController.routName,
//             (route) => false,
//           )
//         });
//   }

//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@       GUEST LOG IN         @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// }

// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@     CurrentUserObject      @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

// enum CurrentUserType {
//   guest,
//   customer,
//   provider,
//   admin,
// }

// extension CurrentUserTypeString on CurrentUserType {
//   String get rawValue => describeEnum(this);
// }

// class CurrentUserObject {
//   final String uid;
//   final String name;
//   final String email;
//   final String token;
//   final int countryId;
//   final int cityId;
//   final CurrentUserType currentUserType;
//   final String phoneNumber;

//   CurrentUserObject({
//     required this.uid,
//     required this.name,
//     required this.email,
//     required this.token,
//     required this.countryId,
//     required this.cityId,
//     required this.currentUserType,
//     required this.phoneNumber,
//   });
// }

// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@     AuthApiOperations      @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@     AuthApiOperations      @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@     AuthApiOperations      @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
// //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

// class AuthApiOperations {
//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@      Log In Register       @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

//   static Future<KH_API_SERIALIZED_RESPONSE> LogInRegister({
//     required String? name,
//     required String mobile,
//     required String password,
//     required String notification_id,
//     required bool check,
//   }) async {
//     final languageCode = await KH_Languages.getHeaderLanguageCode();

//     final param = {
//       "user_type": K_API_USER_TYPE,
//       "device_type": KH_Responsivenes.getPlatform(),
//       "api_password": K_API_PASSWORD,
//       "language": languageCode,
//       //
//       "mobile": mobile,
//       "password": password,
//       "notification_id": notification_id,
//       "check": check,
//       "name": name,
//       //
//     };
//     var body = json.encode(param);
//     //========================//
//     //========================//
//     final KH_API_RESPONSE khResponse = await API_Operations.make_API_request(
//       theUrl: K_LOG_IN_REGISTER_URL,
//       therequestType: RequestsTypeEnum.Post,
//       theHeader: await API_Operations.getHeaderWithoutToken(),
//       theparameters: body,
//     );
//     //========================//
//     //========================//
//     if (khResponse.isRequestSuccessfull) {
//       if (khResponse.theResponse != null) {
//         final body = khResponse.theResponse?.body;
//         if (body != null) {
//           //========================//
//           //========================//
//           final jsonBody = jsonDecode(body);
//           AuthResponse authResponse = AuthResponse.fromJson(jsonBody);
//           //========================//
//           //========================//
//           return KH_API_SERIALIZED_RESPONSE(
//             theResponseData: authResponse,
//           );
//           //========================//
//           //========================//
//         } else {
//           return KH_API_SERIALIZED_RESPONSE(
//             isRequestSuccessfull: false,
//             responseMessage: khResponse.errorMessage,
//           );
//         }
//       } else {
//         return KH_API_SERIALIZED_RESPONSE(
//           isRequestSuccessfull: false,
//           responseMessage: khResponse.errorMessage,
//         );
//       }
//     } else {
//       if (khResponse.isInternetDisConnected) {
//         return KH_API_SERIALIZED_RESPONSE(
//           isRequestSuccessfull: false,
//           isInternetDisConnected: true,
//           responseMessage: khResponse.errorMessage,
//         );
//       } else {
//         return KH_API_SERIALIZED_RESPONSE(
//           isRequestSuccessfull: false,
//           responseMessage: khResponse.errorMessage,
//         );
//       }
//     }
//   }

//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@       Mobile Log In        @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

//   static Future<KH_API_SERIALIZED_RESPONSE> logInWithMobileAndPassword({
//     required String mobile,
//     required String password,
//     required String notification_id,
//   }) async {
//     final languageCode = await KH_Languages.getHeaderLanguageCode();

//     final param = {
//       "user_type": K_API_USER_TYPE,
//       "device_type": KH_Responsivenes.getPlatform(),
//       "api_password": K_API_PASSWORD,
//       "language": languageCode,
//       //
//       "mobile": mobile,
//       "password": password,
//       "notification_id": notification_id,
//       //
//     };
//     var body = json.encode(param);
//     //========================//
//     //========================//
//     final KH_API_RESPONSE khResponse = await API_Operations.make_API_request(
//       theUrl: K_MOBILE_LOG_IN_URL,
//       therequestType: RequestsTypeEnum.Post,
//       theHeader: await API_Operations.getHeaderWithoutToken(),
//       theparameters: body,
//     );
//     //========================//
//     //========================//
//     if (khResponse.isRequestSuccessfull) {
//       if (khResponse.theResponse != null) {
//         final body = khResponse.theResponse?.body;
//         if (body != null) {
//           //========================//
//           //========================//
//           final jsonBody = jsonDecode(body);
//           AuthResponse authResponse = AuthResponse.fromJson(jsonBody);
//           //========================//
//           //========================//
//           return KH_API_SERIALIZED_RESPONSE(
//             theResponseData: authResponse,
//           );
//           //========================//
//           //========================//
//         } else {
//           return KH_API_SERIALIZED_RESPONSE(
//             isRequestSuccessfull: false,
//             responseMessage: khResponse.errorMessage,
//           );
//         }
//       } else {
//         return KH_API_SERIALIZED_RESPONSE(
//           isRequestSuccessfull: false,
//           responseMessage: khResponse.errorMessage,
//         );
//       }
//     } else {
//       if (khResponse.isInternetDisConnected) {
//         return KH_API_SERIALIZED_RESPONSE(
//           isRequestSuccessfull: false,
//           isInternetDisConnected: true,
//           responseMessage: khResponse.errorMessage,
//         );
//       } else {
//         return KH_API_SERIALIZED_RESPONSE(
//           isRequestSuccessfull: false,
//           responseMessage: khResponse.errorMessage,
//         );
//       }
//     }
//   }

//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@       Mobile Log In        @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

//   static Future<KH_API_SERIALIZED_RESPONSE> register({
//     required String mobile,
//     required String name,
//     required String? email,
//     required String password,
//     required String notification_id,
//     required bool check,
//   }) async {
//     final languageCode = await KH_Languages.getHeaderLanguageCode();

//     final param = {
//       "user_type": K_API_USER_TYPE,
//       "device_type": KH_Responsivenes.getPlatform(),
//       "api_password": K_API_PASSWORD,
//       "language": languageCode,
//       //
//       "mobile": mobile,
//       "name": name,
//       "email": email,
//       "password": password,
//       "password_confirmation": password,
//       "notification_id": notification_id,
//       //
//       "check": check,
//     };
//     var body = json.encode(param);
//     //========================//
//     //========================//
//     final KH_API_RESPONSE khResponse = await API_Operations.make_API_request(
//       theUrl: K_MOBILE_REGISTER_URL,
//       therequestType: RequestsTypeEnum.Post,
//       theHeader: await API_Operations.getHeaderWithoutToken(),
//       theparameters: body,
//     );
//     //========================//
//     //========================//
//     if (khResponse.isRequestSuccessfull) {
//       if (khResponse.theResponse != null) {
//         final body = khResponse.theResponse?.body;
//         if (body != null) {
//           //========================//
//           //========================//
//           final jsonBody = jsonDecode(body);
//           AuthResponse authResponse = AuthResponse.fromJson(jsonBody);
//           //========================//
//           //========================//
//           return KH_API_SERIALIZED_RESPONSE(
//             theResponseData: authResponse,
//           );
//           //========================//
//           //========================//
//         } else {
//           return KH_API_SERIALIZED_RESPONSE(
//             isRequestSuccessfull: false,
//             responseMessage: khResponse.errorMessage,
//           );
//         }
//       } else {
//         return KH_API_SERIALIZED_RESPONSE(
//           isRequestSuccessfull: false,
//           responseMessage: khResponse.errorMessage,
//         );
//       }
//     } else {
//       if (khResponse.isInternetDisConnected) {
//         return KH_API_SERIALIZED_RESPONSE(
//           isRequestSuccessfull: false,
//           isInternetDisConnected: true,
//           responseMessage: khResponse.errorMessage,
//         );
//       } else {
//         return KH_API_SERIALIZED_RESPONSE(
//           isRequestSuccessfull: false,
//           responseMessage: khResponse.errorMessage,
//         );
//       }
//     }
//   }

//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@           o t p            @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

//   static Future<KH_API_SERIALIZED_RESPONSE> sentOtpWithMobile({
//     required String mobile,
//     required bool check_if_mobile_exists,
//   }) async {
//     final languageCode = await KH_Languages.getHeaderLanguageCode();
//     final param = {
//       "user_type": K_API_USER_TYPE,
//       "device_type": KH_Responsivenes.getPlatform(),
//       "api_password": K_API_PASSWORD,
//       "language": languageCode,
//       //
//       "mobile": mobile,
//       "check_if_mobile_exists": check_if_mobile_exists,
//       //
//     };
//     var body = json.encode(param);
//     //========================//
//     //========================//
//     final KH_API_RESPONSE khResponse = await API_Operations.make_API_request(
//       theUrl: K_MOBILE_CODE_REQUEST_URL,
//       therequestType: RequestsTypeEnum.Post,
//       theHeader: await API_Operations.getHeaderWithoutToken(),
//       theparameters: body,
//     );
//     //========================//
//     //========================//
//     if (khResponse.isRequestSuccessfull) {
//       if (khResponse.theResponse != null) {
//         final body = khResponse.theResponse?.body;
//         if (body != null) {
//           //========================//
//           //========================//
//           final jsonBody = jsonDecode(body);
//           AuthResponse authResponse = AuthResponse.fromJson(jsonBody);
//           //========================//
//           //========================//
//           return KH_API_SERIALIZED_RESPONSE(
//             theResponseData: authResponse,
//           );
//           //========================//
//           //========================//
//         } else {
//           return KH_API_SERIALIZED_RESPONSE(
//             isRequestSuccessfull: false,
//             responseMessage: khResponse.errorMessage,
//           );
//         }
//       } else {
//         return KH_API_SERIALIZED_RESPONSE(
//           isRequestSuccessfull: false,
//           responseMessage: khResponse.errorMessage,
//         );
//       }
//     } else {
//       if (khResponse.isInternetDisConnected) {
//         return KH_API_SERIALIZED_RESPONSE(
//           isRequestSuccessfull: false,
//           isInternetDisConnected: true,
//           responseMessage: khResponse.errorMessage,
//         );
//       } else {
//         return KH_API_SERIALIZED_RESPONSE(
//           isRequestSuccessfull: false,
//           responseMessage: khResponse.errorMessage,
//         );
//       }
//     }
//   }

//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@      Change Password       @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

//   static Future<KH_API_SERIALIZED_RESPONSE> updatePassword({
//     required String mobile,
//     required String password,
//   }) async {
//     final languageCode = await KH_Languages.getHeaderLanguageCode();
//     final param = {
//       "user_type": K_API_USER_TYPE,
//       "device_type": KH_Responsivenes.getPlatform(),
//       "api_password": K_API_PASSWORD,
//       "language": languageCode,
//       //
//       "mobile": mobile,
//       "password": password,
//       //
//     };
//     var body = json.encode(param);
//     //========================//
//     //========================//
//     final KH_API_RESPONSE khResponse = await API_Operations.make_API_request(
//       theUrl: K_MOBILE_UPDATE_PASSWORD_URL,
//       therequestType: RequestsTypeEnum.Post,
//       theHeader: await API_Operations.getHeaderWithoutToken(),
//       theparameters: body,
//     );
//     //========================//
//     //========================//
//     if (khResponse.isRequestSuccessfull) {
//       if (khResponse.theResponse != null) {
//         final body = khResponse.theResponse?.body;
//         if (body != null) {
//           //========================//
//           //========================//
//           final jsonBody = jsonDecode(body);
//           AuthResponse authResponse = AuthResponse.fromJson(jsonBody);
//           //========================//
//           //========================//
//           return KH_API_SERIALIZED_RESPONSE(
//             theResponseData: authResponse,
//           );
//           //========================//
//           //========================//
//         } else {
//           return KH_API_SERIALIZED_RESPONSE(
//             isRequestSuccessfull: false,
//             responseMessage: khResponse.errorMessage,
//           );
//         }
//       } else {
//         return KH_API_SERIALIZED_RESPONSE(
//           isRequestSuccessfull: false,
//           responseMessage: khResponse.errorMessage,
//         );
//       }
//     } else {
//       if (khResponse.isInternetDisConnected) {
//         return KH_API_SERIALIZED_RESPONSE(
//           isRequestSuccessfull: false,
//           isInternetDisConnected: true,
//           responseMessage: khResponse.errorMessage,
//         );
//       } else {
//         return KH_API_SERIALIZED_RESPONSE(
//           isRequestSuccessfull: false,
//           responseMessage: khResponse.errorMessage,
//         );
//       }
//     }
//   }

//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@          Log Out           @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//

//   static Future<KH_API_SERIALIZED_RESPONSE> logOut() async {
//     final languageCode = await KH_Languages.getHeaderLanguageCode();
//     final param = {
//       "user_type": K_API_USER_TYPE,
//       "device_type": KH_Responsivenes.getPlatform(),
//       "api_password": K_API_PASSWORD,
//       "language": languageCode,
//       //
//       //
//     };
//     var body = json.encode(param);
//     //========================//
//     //========================//
//     final KH_API_RESPONSE khResponse = await API_Operations.make_API_request(
//       theUrl: K_LOG_OUT_URL,
//       therequestType: RequestsTypeEnum.Post,
//       theHeader: await API_Operations.getHeaderWithToken(),
//       theparameters: body,
//     );
//     //========================//
//     //========================//
//     if (khResponse.isRequestSuccessfull) {
//       if (khResponse.theResponse != null) {
//         final body = khResponse.theResponse?.body;
//         if (body != null) {
//           //========================//
//           //========================//
//           final jsonBody = jsonDecode(body);
//           AuthResponse authResponse = AuthResponse.fromJson(jsonBody);
//           //========================//
//           //========================//
//           return KH_API_SERIALIZED_RESPONSE(
//             theResponseData: authResponse,
//           );
//           //========================//
//           //========================//
//         } else {
//           return KH_API_SERIALIZED_RESPONSE(
//             isRequestSuccessfull: false,
//             responseMessage: khResponse.errorMessage,
//           );
//         }
//       } else {
//         return KH_API_SERIALIZED_RESPONSE(
//           isRequestSuccessfull: false,
//           responseMessage: khResponse.errorMessage,
//         );
//       }
//     } else {
//       if (khResponse.isInternetDisConnected) {
//         return KH_API_SERIALIZED_RESPONSE(
//           isRequestSuccessfull: false,
//           isInternetDisConnected: true,
//           responseMessage: khResponse.errorMessage,
//         );
//       } else {
//         return KH_API_SERIALIZED_RESPONSE(
//           isRequestSuccessfull: false,
//           responseMessage: khResponse.errorMessage,
//         );
//       }
//     }
//   }

//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@                              @@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@                            @@@@@@@@@@@@@@@@@@@@@@@@//
//   //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//
// }
