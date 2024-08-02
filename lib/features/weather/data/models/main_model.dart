import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_model.g.dart';
part 'main_model.freezed.dart';

@freezed
class MainModel with _$MainModel {
  const factory MainModel({
    final num? temp,
    final num? pressure,
    final num? humidity,
  }) = _MainModel;

  factory MainModel.fromJson(Map<String, Object?> json) => _$MainModelFromJson(json);
}
