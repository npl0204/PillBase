import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/value_objects.dart';

part 'entry.freezed.dart';

@freezed
abstract class Entry implements _$Entry {
  const Entry._();

  const factory Entry(
      {required UniqueId id,
      required String entryName,
      required String entryClass,
      required String indication,
      required String formulation,
      required String dose,
      required String contraindication,
      required String caution,
      required String sideEffects,
      required String instructions,
      }) = _Entry;
}
