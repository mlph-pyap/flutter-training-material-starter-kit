import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_object.dart';

part 'note_db_value_object.freezed.dart';

@freezed
abstract class NoteDbValueObject implements ValueObject, _$NoteDbValueObject  {
  ///
  const factory NoteDbValueObject(String subject, String notes, bool isActive) =
      _NoteDbValueObject;

  const NoteDbValueObject._();
}
