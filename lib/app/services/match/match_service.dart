import 'package:dio/dio.dart';
import 'package:getx_skeleton/models/coupon/coupon_model.dart';
import 'package:getx_skeleton/models/data_result/data_result.dart';
import 'package:getx_skeleton/models/match/live_match_model.dart';
import 'package:retrofit/retrofit.dart';
import '../../../utils/constants.dart';
part 'match_service.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class MatchService {
  factory MatchService(Dio dio, {String baseUrl}) = _MatchService;

  @GET("live-match")
  Future<DataResult<List<LiveMatchModel>>> liveMatch();
}
