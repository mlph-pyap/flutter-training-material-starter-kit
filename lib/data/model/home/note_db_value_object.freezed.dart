// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'note_db_value_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteDbValueObjectTearOff {
  const _$NoteDbValueObjectTearOff();

  _NoteDbValueObject call(String subject, String notes, bool isActive) {
    return _NoteDbValueObject(
      subject,
      notes,
      isActive,
    );
  }
}

/// @nodoc
const $NoteDbValueObject = _$NoteDbValueObjectTearOff();

/// @nodoc
mixin _$NoteDbValueObject {
  String get subject => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteDbValueObjectCopyWith<NoteDbValueObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteDbValueObjectCopyWith<$Res> {
  factory $NoteDbValueObjectCopyWith(
          NoteDbValueObject value, $Res Function(NoteDbValueObject) then) =
      _$NoteDbValueObjectCopyWithImpl<$Res>;
  $Res call({String subject, String notes, bool isActive});
}

/// @nodoc
class _$NoteDbValueObjectCopyWithImpl<$Res>
    implements $NoteDbValueObjectCopyWith<$Res> {
  _$NoteDbValueObjectCopyWithImpl(this._value, this._then);

  final NoteDbValueObject _value;
  // ignore: unused_field
  final $Res Function(NoteDbValueObject) _then;

  @override
  $Res call({
    Object? subject = freezed,
    Object? notes = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$NoteDbValueObjectCopyWith<$Res>
    implements $NoteDbValueObjectCopyWith<$Res> {
  factory _$NoteDbValueObjectCopyWith(
          _NoteDbValueObject value, $Res Function(_NoteDbValueObject) then) =
      __$NoteDbValueObjectCopyWithImpl<$Res>;
  @override
  $Res call({String subject, String notes, bool isActive});
}

/// @nodoc
class __$NoteDbValueObjectCopyWithImpl<$Res>
    extends _$NoteDbValueObjectCopyWithImpl<$Res>
    implements _$NoteDbValueObjectCopyWith<$Res> {
  __$NoteDbValueObjectCopyWithImpl(
      _NoteDbValueObject _value, $Res Function(_NoteDbValueObject) _then)
      : super(_value, (v) => _then(v as _NoteDbValueObject));

  @override
  _NoteDbValueObject get _value => super._value as _NoteDbValueObject;

  @override
  $Res call({
    Object? subject = freezed,
    Object? notes = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_NoteDbValueObject(
      subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
      isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NoteDbValueObject extends _NoteDbValueObject {
  const _$_NoteDbValueObject(this.subject, this.notes, this.isActive)
      : super._();

  @override
  final String subject;
  @override
  final String notes;
  @override
  final bool isActive;

  @override
  String toString() {
    return 'NoteDbValueObject(subject: $subject, notes: $notes, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoteDbValueObject &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.isActive, isActive) ||
                const DeepCollectionEquality()
                    .equals(other.isActive, isActive)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(isActive);

  @JsonKey(ignore: true)
  @override
  _$NoteDbValueObjectCopyWith<_NoteDbValueObject> get copyWith =>
      __$NoteDbValueObjectCopyWithImpl<_NoteDbValueObject>(this, _$identity);
}

abstract class _NoteDbValueObject extends NoteDbValueObject {
  const factory _NoteDbValueObject(
      String subject, String notes, bool isActive) = _$_NoteDbValueObject;
  const _NoteDbValueObject._() : super._();

  @override
  String get subject => throw _privateConstructorUsedError;
  @override
  String get notes => throw _privateConstructorUsedError;
  @override
  bool get isActive => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NoteDbValueObjectCopyWith<_NoteDbValueObject> get copyWith =>
      throw _privateConstructorUsedError;
}
