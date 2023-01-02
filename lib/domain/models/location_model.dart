import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
class LocationModel with _$LocationModel {
  factory LocationModel(
    @JsonKey(name: 'name') String city,
    @JsonKey(name: 'localtime') String date,
  ) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$$_LocationModelFromJson(json);



}
