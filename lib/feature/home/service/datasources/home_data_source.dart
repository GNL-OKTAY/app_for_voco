import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:app_for_voco/feature/home/service/contract/home_data_source.dart';

import '../../../auth/model/user_data_model.dart';

const baseUrl = "https://reqres.in/api/login";

class ReqResHomeDataSource extends HomeDataSourceContract {
  ReqResHomeDataSource() {
    _dio = Dio();
  }
  late final Dio _dio;

  @override
  Future<UserDataModel?> checkCurrentUser() async {
    return null;

    // final response = await _dio.post(
    //   baseUrl,
    //   data: userModel.toJson(),
    // );

    // log("${response.statusCode}");

    // if (response.statusCode == 200) {
    //   log("Login Successful");
    //   log("$response");

    //   final model = LoginResponseModel.fromMap(response.data);
    //   log("Login Successful");
    //   log(model.toString());
    //   return model;
    // } else {
    //   log('Request failed with status code: ${response.statusCode}');
    //   return null;
    // }
  }

  // Future<UserDataModel?> _userFromFirebase(User? user) async {
  //   if (user == null) {
  //     return null;
  //   } else {
  //     final userFromFirebase =
  //         await _firestore.collection('markets').doc(user.uid).get();
  //     return UserDataModel(
  //       username: userFromFirebase['username'].toString(),
  //       id: userFromFirebase['id'].toString(),
  //     );
  //   }
  // }

  // @override
  // Future<List<MarketCategoryModel?>?> fetchChosenMainCategory(
  //   String choosenCategoryId,
  // ) async {
  //   final response = await _firestore
  //       .collection('mainCategories')
  //       .doc(choosenCategoryId)
  //       .collection('services')
  //       .get();

  //   final docs = response.docs;

  //   if (docs.isNotEmpty) {
  //     final categoryList = <MarketCategoryModel>[];

  //     for (final aa in docs) {
  //       final v = aa.data();
  //       final model = MarketCategoryModel.fromJson(v);
  //       categoryList.add(model);
  //     }
  //     return categoryList;
  //   } else {
  //     return null;
  //   }
  // }

  // @override
  // Future<List<HomeAdsSliderCardModel?>?> fetchHomeAdsSliderCardData() async {
  //   final response = await _firestore.collection('news').get();

  //   final docs = response.docs;

  //   if (docs.isNotEmpty) {
  //     final categoryList = <HomeAdsSliderCardModel>[];

  //     for (final aa in docs) {
  //       final v = aa.data();
  //       final model = HomeAdsSliderCardModel.fromJson(v);
  //       categoryList.add(model);
  //     }
  //     return categoryList;
  //   } else {
  //     return null;
  //   }
  // }

  // @override
  // Future<List<HomeAdsCardModel?>?> fetchHomeAdsCardData() async {
  //   final response = await _firestore.collection('recommended').get();

  //   final docs = response.docs;

  //   if (docs.isNotEmpty) {
  //     final categoryList = <HomeAdsCardModel>[];

  //     for (final aa in docs) {
  //       final v = aa.data();
  //       final model = HomeAdsCardModel.fromJson(v);
  //       categoryList.add(model);
  //     }
  //     return categoryList;
  //   } else {
  //     return null;
  //   }
  // }
}
