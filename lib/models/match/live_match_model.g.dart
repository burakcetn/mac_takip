// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_match_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LiveMatchModel _$$_LiveMatchModelFromJson(Map<String, dynamic> json) =>
    _$_LiveMatchModel(
      macid: json['macid'] as int?,
      saat: json['saat'] as String?,
      lig: json['lig'] as String?,
      ligl: json['ligl'] as String?,
      ev: json['ev'] as String?,
      konuk: json['konuk'] as String?,
      dk: json['dk'] as String?,
      evgol: json['evgol'] as int?,
      depgol: json['depgol'] as int?,
      iy: json['iy'] as String?,
      skor: json['skor'] as String?,
    );

Map<String, dynamic> _$$_LiveMatchModelToJson(_$_LiveMatchModel instance) =>
    <String, dynamic>{
      'macid': instance.macid,
      'saat': instance.saat,
      'lig': instance.lig,
      'ligl': instance.ligl,
      'ev': instance.ev,
      'konuk': instance.konuk,
      'dk': instance.dk,
      'evgol': instance.evgol,
      'depgol': instance.depgol,
      'iy': instance.iy,
      'skor': instance.skor,
    };
