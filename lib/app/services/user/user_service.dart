import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:getx_skeleton/models/data_result/data_result.dart';
import 'package:getx_skeleton/models/login/login_model.dart';
import 'package:getx_skeleton/models/profile_update/profile_update_model.dart';
import 'package:getx_skeleton/models/register_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../../models/user/user_model.dart';
import '../../../utils/constants.dart';

part 'user_service.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class UserService {
  factory UserService(Dio dio, {String baseUrl}) = _UserService;

  @POST("register")
  Future<DataResult<LoginModel>> register(@Body() RegisterModel registerModel);

  @POST("login")
  Future<DataResult<LoginModel>> login(@Body() RegisterModel registerModel);

  @GET("user-destroy")
  Future<DataResult<List>> deleteAccount();

  @GET("user/profile")
  Future<DataResult<User>> profile();

  @POST("profile-edit")
  Future<DataResult<User>> profileEdit(@Body() ProfileUpdateModel updateModel);

  @GET("destroy/{id}")
  Future<DataResult<User>> destroy(@Path("id") int id);

  @GET("logout")
  Future<DataResult<User>> logout();
}
