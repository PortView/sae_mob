import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'orgao_publico_record.g.dart';

abstract class OrgaoPublicoRecord
    implements Built<OrgaoPublicoRecord, OrgaoPublicoRecordBuilder> {
  static Serializer<OrgaoPublicoRecord> get serializer =>
      _$orgaoPublicoRecordSerializer;

  DateTime? get createDt;

  String? get nome;

  int? get epresaId;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(OrgaoPublicoRecordBuilder builder) => builder
    ..nome = ''
    ..epresaId = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orgaoPublico');

  static Stream<OrgaoPublicoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<OrgaoPublicoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  OrgaoPublicoRecord._();
  factory OrgaoPublicoRecord(
          [void Function(OrgaoPublicoRecordBuilder) updates]) =
      _$OrgaoPublicoRecord;

  static OrgaoPublicoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createOrgaoPublicoRecordData({
  DateTime? createDt,
  String? nome,
  int? epresaId,
}) {
  final firestoreData = serializers.toFirestore(
    OrgaoPublicoRecord.serializer,
    OrgaoPublicoRecord(
      (o) => o
        ..createDt = createDt
        ..nome = nome
        ..epresaId = epresaId,
    ),
  );

  return firestoreData;
}
