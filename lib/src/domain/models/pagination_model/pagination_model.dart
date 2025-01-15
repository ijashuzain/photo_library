import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_model.freezed.dart';
part 'pagination_model.g.dart';

@freezed
class Pagination with _$Pagination {
  const factory Pagination({
    @Default(1) int page,
    @JsonKey(name: "per_page") @Default(10) int perPage,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) => _$PaginationFromJson(json);
}
