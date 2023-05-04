import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'codigos_serv_record.g.dart';

abstract class CodigosServRecord
    implements Built<CodigosServRecord, CodigosServRecordBuilder> {
  static Serializer<CodigosServRecord> get serializer =>
      _$codigosServRecordSerializer;

  DateTime? get createDt;

  int? get codigo;

  String? get descricao;

  int? get empresId;

  int? get grupo;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CodigosServRecordBuilder builder) => builder
    ..codigo = 0
    ..descricao = ''
    ..empresId = 0
    ..grupo = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('codigosServ');

  static Stream<CodigosServRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CodigosServRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CodigosServRecord._();
  factory CodigosServRecord([void Function(CodigosServRecordBuilder) updates]) =
      _$CodigosServRecord;

  static CodigosServRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCodigosServRecordData({
  DateTime? createDt,
  int? codigo,
  String? descricao,
  int? empresId,
  int? grupo,
}) {
  final firestoreData = serializers.toFirestore(
    CodigosServRecord.serializer,
    CodigosServRecord(
      (c) => c
        ..createDt = createDt
        ..codigo = codigo
        ..descricao = descricao
        ..empresId = empresId
        ..grupo = grupo,
    ),
  );

  return firestoreData;
}
