import '../core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pill_check_item.freezed.dart';

@freezed
abstract class PillCheckItem implements _$PillCheckItem {
  const PillCheckItem._();

  const factory PillCheckItem({
    required UniqueId id,
    required DateTime dateTime,
    required bool check,
  }) = _PillCheckItem;
}