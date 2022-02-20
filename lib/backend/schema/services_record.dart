import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'services_record.g.dart';

abstract class ServicesRecord
    implements Built<ServicesRecord, ServicesRecordBuilder> {
  static Serializer<ServicesRecord> get serializer =>
      _$servicesRecordSerializer;

  @nullable
  String get equipmentUID;

  @nullable
  DateTime get lastServiceDate;

  @nullable
  String get serviceType;

  @nullable
  String get serviceCost;

  @nullable
  String get notes;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ServicesRecordBuilder builder) => builder
    ..equipmentUID = ''
    ..serviceType = ''
    ..serviceCost = ''
    ..notes = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Services');

  static Stream<ServicesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ServicesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ServicesRecord._();
  factory ServicesRecord([void Function(ServicesRecordBuilder) updates]) =
      _$ServicesRecord;

  static ServicesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createServicesRecordData({
  String equipmentUID,
  DateTime lastServiceDate,
  String serviceType,
  String serviceCost,
  String notes,
}) =>
    serializers.toFirestore(
        ServicesRecord.serializer,
        ServicesRecord((s) => s
          ..equipmentUID = equipmentUID
          ..lastServiceDate = lastServiceDate
          ..serviceType = serviceType
          ..serviceCost = serviceCost
          ..notes = notes));
