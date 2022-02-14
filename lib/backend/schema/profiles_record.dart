import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'profiles_record.g.dart';

abstract class ProfilesRecord
    implements Built<ProfilesRecord, ProfilesRecordBuilder> {
  static Serializer<ProfilesRecord> get serializer =>
      _$profilesRecordSerializer;

  @nullable
  String get firstName;

  @nullable
  String get lastName;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  String get phoneNumber;

  @nullable
  int get uid;

  @nullable
  String get propertyAddress1;

  @nullable
  String get propertyAddress2;

  @nullable
  String get propertyAddress3;

  @nullable
  String get phone2;

  @nullable
  String get notes;

  @nullable
  @BuiltValueField(wireName: 'Owner')
  String get owner;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProfilesRecordBuilder builder) => builder
    ..firstName = ''
    ..lastName = ''
    ..email = ''
    ..phoneNumber = ''
    ..uid = 0
    ..propertyAddress1 = ''
    ..propertyAddress2 = ''
    ..propertyAddress3 = ''
    ..phone2 = ''
    ..notes = ''
    ..owner = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Profiles');

  static Stream<ProfilesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProfilesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProfilesRecord._();
  factory ProfilesRecord([void Function(ProfilesRecordBuilder) updates]) =
      _$ProfilesRecord;

  static ProfilesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProfilesRecordData({
  String firstName,
  String lastName,
  String email,
  DateTime createdTime,
  String phoneNumber,
  int uid,
  String propertyAddress1,
  String propertyAddress2,
  String propertyAddress3,
  String phone2,
  String notes,
  String owner,
}) =>
    serializers.toFirestore(
        ProfilesRecord.serializer,
        ProfilesRecord((p) => p
          ..firstName = firstName
          ..lastName = lastName
          ..email = email
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..uid = uid
          ..propertyAddress1 = propertyAddress1
          ..propertyAddress2 = propertyAddress2
          ..propertyAddress3 = propertyAddress3
          ..phone2 = phone2
          ..notes = notes
          ..owner = owner));
