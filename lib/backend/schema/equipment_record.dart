import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'equipment_record.g.dart';

abstract class EquipmentRecord
    implements Built<EquipmentRecord, EquipmentRecordBuilder> {
  static Serializer<EquipmentRecord> get serializer =>
      _$equipmentRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Name')
  String get name;

  @nullable
  String get yearPurchased;

  @nullable
  @BuiltValueField(wireName: 'Cost')
  String get cost;

  @nullable
  @BuiltValueField(wireName: 'Notes')
  String get notes;

  @nullable
  @BuiltValueField(wireName: 'Owner')
  String get owner;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(EquipmentRecordBuilder builder) => builder
    ..name = ''
    ..yearPurchased = ''
    ..cost = ''
    ..notes = ''
    ..owner = ''
    ..uid = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Equipment');

  static Stream<EquipmentRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<EquipmentRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  EquipmentRecord._();
  factory EquipmentRecord([void Function(EquipmentRecordBuilder) updates]) =
      _$EquipmentRecord;

  static EquipmentRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createEquipmentRecordData({
  String name,
  String yearPurchased,
  String cost,
  String notes,
  String owner,
  String uid,
}) =>
    serializers.toFirestore(
        EquipmentRecord.serializer,
        EquipmentRecord((e) => e
          ..name = name
          ..yearPurchased = yearPurchased
          ..cost = cost
          ..notes = notes
          ..owner = owner
          ..uid = uid));
