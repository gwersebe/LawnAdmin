// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoices_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InvoicesRecord> _$invoicesRecordSerializer =
    new _$InvoicesRecordSerializer();

class _$InvoicesRecordSerializer
    implements StructuredSerializer<InvoicesRecord> {
  @override
  final Iterable<Type> types = const [InvoicesRecord, _$InvoicesRecord];
  @override
  final String wireName = 'InvoicesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, InvoicesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.profileUID;
    if (value != null) {
      result
        ..add('profileUID')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.profile;
    if (value != null) {
      result
        ..add('profile')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.fullName;
    if (value != null) {
      result
        ..add('FullName')
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
    value = object.serviceName1;
    if (value != null) {
      result
        ..add('serviceName1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.serviceName2;
    if (value != null) {
      result
        ..add('serviceName2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.serviceName3;
    if (value != null) {
      result
        ..add('serviceName3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.serviceName4;
    if (value != null) {
      result
        ..add('serviceName4')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.serviceType;
    if (value != null) {
      result
        ..add('serviceType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.serviceCost1;
    if (value != null) {
      result
        ..add('serviceCost1')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.serviceCost2;
    if (value != null) {
      result
        ..add('serviceCost2')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.serviceCost3;
    if (value != null) {
      result
        ..add('serviceCost3')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.serviceCost4;
    if (value != null) {
      result
        ..add('serviceCost4')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  InvoicesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InvoicesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'profileUID':
          result.profileUID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'profile':
          result.profile = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'FullName':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'serviceName1':
          result.serviceName1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serviceName2':
          result.serviceName2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serviceName3':
          result.serviceName3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serviceName4':
          result.serviceName4 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serviceType':
          result.serviceType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serviceCost1':
          result.serviceCost1 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'serviceCost2':
          result.serviceCost2 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'serviceCost3':
          result.serviceCost3 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'serviceCost4':
          result.serviceCost4 = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$InvoicesRecord extends InvoicesRecord {
  @override
  final int profileUID;
  @override
  final DocumentReference<Object> profile;
  @override
  final String fullName;
  @override
  final DateTime createdTime;
  @override
  final String serviceName1;
  @override
  final String serviceName2;
  @override
  final String serviceName3;
  @override
  final String serviceName4;
  @override
  final String serviceType;
  @override
  final int serviceCost1;
  @override
  final int serviceCost2;
  @override
  final int serviceCost3;
  @override
  final int serviceCost4;
  @override
  final DocumentReference<Object> reference;

  factory _$InvoicesRecord([void Function(InvoicesRecordBuilder) updates]) =>
      (new InvoicesRecordBuilder()..update(updates)).build();

  _$InvoicesRecord._(
      {this.profileUID,
      this.profile,
      this.fullName,
      this.createdTime,
      this.serviceName1,
      this.serviceName2,
      this.serviceName3,
      this.serviceName4,
      this.serviceType,
      this.serviceCost1,
      this.serviceCost2,
      this.serviceCost3,
      this.serviceCost4,
      this.reference})
      : super._();

  @override
  InvoicesRecord rebuild(void Function(InvoicesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvoicesRecordBuilder toBuilder() =>
      new InvoicesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvoicesRecord &&
        profileUID == other.profileUID &&
        profile == other.profile &&
        fullName == other.fullName &&
        createdTime == other.createdTime &&
        serviceName1 == other.serviceName1 &&
        serviceName2 == other.serviceName2 &&
        serviceName3 == other.serviceName3 &&
        serviceName4 == other.serviceName4 &&
        serviceType == other.serviceType &&
        serviceCost1 == other.serviceCost1 &&
        serviceCost2 == other.serviceCost2 &&
        serviceCost3 == other.serviceCost3 &&
        serviceCost4 == other.serviceCost4 &&
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
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            0,
                                                            profileUID
                                                                .hashCode),
                                                        profile.hashCode),
                                                    fullName.hashCode),
                                                createdTime.hashCode),
                                            serviceName1.hashCode),
                                        serviceName2.hashCode),
                                    serviceName3.hashCode),
                                serviceName4.hashCode),
                            serviceType.hashCode),
                        serviceCost1.hashCode),
                    serviceCost2.hashCode),
                serviceCost3.hashCode),
            serviceCost4.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InvoicesRecord')
          ..add('profileUID', profileUID)
          ..add('profile', profile)
          ..add('fullName', fullName)
          ..add('createdTime', createdTime)
          ..add('serviceName1', serviceName1)
          ..add('serviceName2', serviceName2)
          ..add('serviceName3', serviceName3)
          ..add('serviceName4', serviceName4)
          ..add('serviceType', serviceType)
          ..add('serviceCost1', serviceCost1)
          ..add('serviceCost2', serviceCost2)
          ..add('serviceCost3', serviceCost3)
          ..add('serviceCost4', serviceCost4)
          ..add('reference', reference))
        .toString();
  }
}

class InvoicesRecordBuilder
    implements Builder<InvoicesRecord, InvoicesRecordBuilder> {
  _$InvoicesRecord _$v;

  int _profileUID;
  int get profileUID => _$this._profileUID;
  set profileUID(int profileUID) => _$this._profileUID = profileUID;

  DocumentReference<Object> _profile;
  DocumentReference<Object> get profile => _$this._profile;
  set profile(DocumentReference<Object> profile) => _$this._profile = profile;

  String _fullName;
  String get fullName => _$this._fullName;
  set fullName(String fullName) => _$this._fullName = fullName;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _serviceName1;
  String get serviceName1 => _$this._serviceName1;
  set serviceName1(String serviceName1) => _$this._serviceName1 = serviceName1;

  String _serviceName2;
  String get serviceName2 => _$this._serviceName2;
  set serviceName2(String serviceName2) => _$this._serviceName2 = serviceName2;

  String _serviceName3;
  String get serviceName3 => _$this._serviceName3;
  set serviceName3(String serviceName3) => _$this._serviceName3 = serviceName3;

  String _serviceName4;
  String get serviceName4 => _$this._serviceName4;
  set serviceName4(String serviceName4) => _$this._serviceName4 = serviceName4;

  String _serviceType;
  String get serviceType => _$this._serviceType;
  set serviceType(String serviceType) => _$this._serviceType = serviceType;

  int _serviceCost1;
  int get serviceCost1 => _$this._serviceCost1;
  set serviceCost1(int serviceCost1) => _$this._serviceCost1 = serviceCost1;

  int _serviceCost2;
  int get serviceCost2 => _$this._serviceCost2;
  set serviceCost2(int serviceCost2) => _$this._serviceCost2 = serviceCost2;

  int _serviceCost3;
  int get serviceCost3 => _$this._serviceCost3;
  set serviceCost3(int serviceCost3) => _$this._serviceCost3 = serviceCost3;

  int _serviceCost4;
  int get serviceCost4 => _$this._serviceCost4;
  set serviceCost4(int serviceCost4) => _$this._serviceCost4 = serviceCost4;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  InvoicesRecordBuilder() {
    InvoicesRecord._initializeBuilder(this);
  }

  InvoicesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _profileUID = $v.profileUID;
      _profile = $v.profile;
      _fullName = $v.fullName;
      _createdTime = $v.createdTime;
      _serviceName1 = $v.serviceName1;
      _serviceName2 = $v.serviceName2;
      _serviceName3 = $v.serviceName3;
      _serviceName4 = $v.serviceName4;
      _serviceType = $v.serviceType;
      _serviceCost1 = $v.serviceCost1;
      _serviceCost2 = $v.serviceCost2;
      _serviceCost3 = $v.serviceCost3;
      _serviceCost4 = $v.serviceCost4;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvoicesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvoicesRecord;
  }

  @override
  void update(void Function(InvoicesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InvoicesRecord build() {
    final _$result = _$v ??
        new _$InvoicesRecord._(
            profileUID: profileUID,
            profile: profile,
            fullName: fullName,
            createdTime: createdTime,
            serviceName1: serviceName1,
            serviceName2: serviceName2,
            serviceName3: serviceName3,
            serviceName4: serviceName4,
            serviceType: serviceType,
            serviceCost1: serviceCost1,
            serviceCost2: serviceCost2,
            serviceCost3: serviceCost3,
            serviceCost4: serviceCost4,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
