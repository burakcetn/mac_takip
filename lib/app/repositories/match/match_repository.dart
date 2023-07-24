import 'package:get/get.dart';
import 'package:getx_skeleton/app/services/match/match_service.dart';
import 'package:getx_skeleton/models/data_result/data_result.dart';
import 'package:getx_skeleton/models/match/live_match_model.dart';

class MatchRepository {
  MatchService service = Get.find();
  Future<DataResult<List<LiveMatchModel>>> getLiveMatch() async {
    return await service.liveMatch();
  }
}
