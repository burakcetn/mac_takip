import 'package:freezed_annotation/freezed_annotation.dart';

part 'live_match_model.freezed.dart';
part 'live_match_model.g.dart';

@freezed
class LiveMatchModel with _$LiveMatchModel {
  const factory LiveMatchModel({
    int? macid,
    String? saat,
    String? lig,
    String? ligl,
    String? ev,
    String? konuk,
    String? dk,
    int? evgol,
    int? depgol,
    String? iy,
    String? skor,
  }) = _LiveMatchModel;

  factory LiveMatchModel.fromJson(Map<String, dynamic> json) =>
      _$LiveMatchModelFromJson(json);
}
