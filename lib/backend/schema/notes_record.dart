import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'notes_record.g.dart';

abstract class NotesRecord implements Built<NotesRecord, NotesRecordBuilder> {
  static Serializer<NotesRecord> get serializer => _$notesRecordSerializer;

  @nullable
  String get noteName;

  @nullable
  String get noteContent;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  String get profileUid;

  @nullable
  String get noteUid;

  @nullable
  @BuiltValueField(wireName: 'Owner')
  String get owner;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(NotesRecordBuilder builder) => builder
    ..noteName = ''
    ..noteContent = ''
    ..profileUid = ''
    ..noteUid = ''
    ..owner = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Notes');

  static Stream<NotesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<NotesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  NotesRecord._();
  factory NotesRecord([void Function(NotesRecordBuilder) updates]) =
      _$NotesRecord;

  static NotesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createNotesRecordData({
  String noteName,
  String noteContent,
  DateTime createdTime,
  String profileUid,
  String noteUid,
  String owner,
}) =>
    serializers.toFirestore(
        NotesRecord.serializer,
        NotesRecord((n) => n
          ..noteName = noteName
          ..noteContent = noteContent
          ..createdTime = createdTime
          ..profileUid = profileUid
          ..noteUid = noteUid
          ..owner = owner));
