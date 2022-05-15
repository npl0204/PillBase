import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/dictionary/entry.dart';

part 'entry_dtos.freezed.dart';
part 'entry_dtos.g.dart';

//dto stands for data transfer object

//If you update the EntryDto and run build_runner, change the generator file to:
//in fromJson:
//pillDateTime: json['pillDateTime'].toDate(),

@freezed
abstract class EntryDto implements _$EntryDto {
  const EntryDto._();

  const factory EntryDto({
    @JsonKey(ignore: true) String? id,
    required String entryName,
    required String entryClass,
    required String indication,
    required String formulation,
    required String dose,
    required String contraindication,
    required String caution,
    required String sideEffects,
    required String instructions,
  }) = _EntryDto;

  factory EntryDto.fromDomain(Entry entry) {
    return EntryDto(
      id: entry.id.getOrCrash(),
      entryName: entry.entryName,
      entryClass: entry.entryClass,
      indication: entry.indication,
      formulation: entry.formulation,
      dose: entry.dose,
      contraindication: entry.contraindication,
      caution: entry.caution,
      sideEffects: entry.sideEffects,
      instructions: entry.instructions,
    );
  }

  Entry toDomain() {
    return Entry(
      id: UniqueId.fromUniqueString(id as String),
      entryName: entryName,
      entryClass: entryClass,
      indication: indication,
      formulation: formulation,
      dose: dose,
      contraindication: contraindication,
      caution: caution,
      sideEffects: sideEffects,
      instructions: instructions,
    );
  }

  factory EntryDto.fromJson(Map<String, dynamic> json) =>
      _$EntryDtoFromJson(json);

  factory EntryDto.fromFirestore(DocumentSnapshot doc) =>
      EntryDto.fromJson(doc.data() as Map<String, dynamic>)
          .copyWith(id: doc.id);
}
