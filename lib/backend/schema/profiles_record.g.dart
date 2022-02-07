// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profiles_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProfilesRecord> _$profilesRecordSerializer =
    new _$ProfilesRecordSerializer();

class _$ProfilesRecordSerializer
    implements StructuredSerializer<ProfilesRecord> {
  @override
  final Iterable<Type> types = const [ProfilesRecord, _$ProfilesRecord];
  @override
  final String wireName = 'ProfilesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ProfilesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.firstName;
    if (value != null) {
      result
        ..add('firstName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('lastName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.propertyAddress1;
    if (value != null) {
      result
        ..add('propertyAddress1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.propertyAddress2;
    if (value != null) {
      result
        ..add('propertyAddress2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.propertyAddress3;
    if (value != null) {
      result
        ..add('propertyAddress3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phone2;
    if (value != null) {
      result
        ..add('phone2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.notes;
    if (value != null) {
      result
        ..add('notes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  ProfilesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProfilesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'propertyAddress1':
          result.propertyAddress1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'propertyAddress2':
          result.propertyAddress2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'propertyAddress3':
          result.propertyAddress3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone2':
          result.phone2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'notes':
          result.notes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$ProfilesRecord extends ProfilesRecord {
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final DateTime createdTime;
  @override
  final String phoneNumber;
  @override
  final int uid;
  @override
  final String propertyAddress1;
  @override
  final String propertyAddress2;
  @override
  final String propertyAddress3;
  @override
  final String phone2;
  @override
  final String notes;
  @override
  final DocumentReference<Object> reference;

  factory _$ProfilesRecord([void Function(ProfilesRecordBuilder) updates]) =>
      (new ProfilesRecordBuilder()..update(updates)).build();

  _$ProfilesRecord._(
      {this.firstName,
      this.lastName,
      this.email,
      this.createdTime,
      this.phoneNumber,
      this.uid,
      this.propertyAddress1,
      this.propertyAddress2,
      this.propertyAddress3,
      this.phone2,
      this.notes,
      this.reference})
      : super._();

  @override
  ProfilesRecord rebuild(void Function(ProfilesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfilesRecordBuilder toBuilder() =>
      new ProfilesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProfilesRecord &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        uid == other.uid &&
        propertyAddress1 == other.propertyAddress1 &&
        propertyAddress2 == other.propertyAddress2 &&
        propertyAddress3 == other.propertyAddress3 &&
        phone2 == other.phone2 &&
        notes == other.notes &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, firstName.hashCode),
                                                lastName.hashCode),
                                            email.hashCode),
                                        createdTime.hashCode),
                                    phoneNumber.hashCode),
                                uid.hashCode),
                            propertyAddress1.hashCode),
                        propertyAddress2.hashCode),
                    propertyAddress3.hashCode),
                phone2.hashCode),
            notes.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProfilesRecord')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('uid', uid)
          ..add('propertyAddress1', propertyAddress1)
          ..add('propertyAddress2', propertyAddress2)
          ..add('propertyAddress3', propertyAddress3)
          ..add('phone2', phone2)
          ..add('notes', notes)
          ..add('reference', reference))
        .toString();
  }
}

class ProfilesRecordBuilder
    implements Builder<ProfilesRecord, ProfilesRecordBuilder> {
  _$ProfilesRecord _$v;

  String _firstName;
  String get firstName => _$this._firstName;
  set firstName(String firstName) => _$this._firstName = firstName;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  int _uid;
  int get uid => _$this._uid;
  set uid(int uid) => _$this._uid = uid;

  String _propertyAddress1;
  String get propertyAddress1 => _$this._propertyAddress1;
  set propertyAddress1(String propertyAddress1) =>
      _$this._propertyAddress1 = propertyAddress1;

  String _propertyAddress2;
  String get propertyAddress2 => _$this._propertyAddress2;
  set propertyAddress2(String propertyAddress2) =>
      _$this._propertyAddress2 = propertyAddress2;

  String _propertyAddress3;
  String get propertyAddress3 => _$this._propertyAddress3;
  set propertyAddress3(String propertyAddress3) =>
      _$this._propertyAddress3 = propertyAddress3;

  String _phone2;
  String get phone2 => _$this._phone2;
  set phone2(String phone2) => _$this._phone2 = phone2;

  String _notes;
  String get notes => _$this._notes;
  set notes(String notes) => _$this._notes = notes;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ProfilesRecordBuilder() {
    ProfilesRecord._initializeBuilder(this);
  }

  ProfilesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _uid = $v.uid;
      _propertyAddress1 = $v.propertyAddress1;
      _propertyAddress2 = $v.propertyAddress2;
      _propertyAddress3 = $v.propertyAddress3;
      _phone2 = $v.phone2;
      _notes = $v.notes;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProfilesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProfilesRecord;
  }

  @override
  void update(void Function(ProfilesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProfilesRecord build() {
    final _$result = _$v ??
        new _$ProfilesRecord._(
            firstName: firstName,
            lastName: lastName,
            email: email,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            uid: uid,
            propertyAddress1: propertyAddress1,
            propertyAddress2: propertyAddress2,
            propertyAddress3: propertyAddress3,
            phone2: phone2,
            notes: notes,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
