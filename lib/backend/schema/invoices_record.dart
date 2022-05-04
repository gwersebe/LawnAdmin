import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'invoices_record.g.dart';

abstract class InvoicesRecord
    implements Built<InvoicesRecord, InvoicesRecordBuilder> {
  static Serializer<InvoicesRecord> get serializer =>
      _$invoicesRecordSerializer;

  @nullable
  DocumentReference get profile;

  @nullable
  @BuiltValueField(wireName: 'FullName')
  String get fullName;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  String get serviceName1;

  @nullable
  String get serviceName2;

  @nullable
  String get serviceName3;

  @nullable
  String get serviceName4;

  @nullable
  String get serviceType;

  @nullable
  String get profileUID;

  @nullable
  String get serviceCost1;

  @nullable
  String get serviceCost2;

  @nullable
  String get serviceCost3;

  @nullable
  String get serviceCost4;

  @nullable
  @BuiltValueField(wireName: 'Owner')
  String get owner;

  @nullable
  bool get isSent;

  @nullable
  String get invoiceUID;

  @nullable
  bool get completed;

  @nullable
  @BuiltValueField(wireName: 'InvoiceTotal')
  int get invoiceTotal;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(InvoicesRecordBuilder builder) => builder
    ..fullName = ''
    ..serviceName1 = ''
    ..serviceName2 = ''
    ..serviceName3 = ''
    ..serviceName4 = ''
    ..serviceType = ''
    ..profileUID = ''
    ..serviceCost1 = ''
    ..serviceCost2 = ''
    ..serviceCost3 = ''
    ..serviceCost4 = ''
    ..owner = ''
    ..isSent = false
    ..invoiceUID = ''
    ..completed = false
    ..invoiceTotal = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Invoices');

  static Stream<InvoicesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<InvoicesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  InvoicesRecord._();
  factory InvoicesRecord([void Function(InvoicesRecordBuilder) updates]) =
      _$InvoicesRecord;

  static InvoicesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createInvoicesRecordData({
  DocumentReference profile,
  String fullName,
  DateTime createdTime,
  String serviceName1,
  String serviceName2,
  String serviceName3,
  String serviceName4,
  String serviceType,
  String profileUID,
  String serviceCost1,
  String serviceCost2,
  String serviceCost3,
  String serviceCost4,
  String owner,
  bool isSent,
  String invoiceUID,
  bool completed,
  int invoiceTotal,
}) =>
    serializers.toFirestore(
        InvoicesRecord.serializer,
        InvoicesRecord((i) => i
          ..profile = profile
          ..fullName = fullName
          ..createdTime = createdTime
          ..serviceName1 = serviceName1
          ..serviceName2 = serviceName2
          ..serviceName3 = serviceName3
          ..serviceName4 = serviceName4
          ..serviceType = serviceType
          ..profileUID = profileUID
          ..serviceCost1 = serviceCost1
          ..serviceCost2 = serviceCost2
          ..serviceCost3 = serviceCost3
          ..serviceCost4 = serviceCost4
          ..owner = owner
          ..isSent = isSent
          ..invoiceUID = invoiceUID
          ..completed = completed
          ..invoiceTotal = invoiceTotal));
