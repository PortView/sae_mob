import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'servicos_base_record.g.dart';

abstract class ServicosBaseRecord
    implements Built<ServicosBaseRecord, ServicosBaseRecordBuilder> {
  static Serializer<ServicosBaseRecord> get serializer =>
      _$servicosBaseRecordSerializer;

  String? get descricao;

  bool? get finalizado;

  bool? get medicao;

  bool? get eliminado;

  DateTime? get lastInteractionDt;

  @BuiltValueField(wireName: 'user_id')
  DocumentReference? get userId;

  DateTime? get createDt;

  DocumentReference? get orgaoId;

  DocumentReference? get codServId;

  bool? get selection;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ServicosBaseRecordBuilder builder) => builder
    ..descricao = ''
    ..finalizado = false
    ..medicao = false
    ..eliminado = false
    ..selection = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('servicosBase');

  static Stream<ServicosBaseRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ServicosBaseRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ServicosBaseRecord._();
  factory ServicosBaseRecord(
          [void Function(ServicosBaseRecordBuilder) updates]) =
      _$ServicosBaseRecord;

  static ServicosBaseRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createServicosBaseRecordData({
  String? descricao,
  bool? finalizado,
  bool? medicao,
  bool? eliminado,
  DateTime? lastInteractionDt,
  DocumentReference? userId,
  DateTime? createDt,
  DocumentReference? orgaoId,
  DocumentReference? codServId,
  bool? selection,
}) {
  final firestoreData = serializers.toFirestore(
    ServicosBaseRecord.serializer,
    ServicosBaseRecord(
      (s) => s
        ..descricao = descricao
        ..finalizado = finalizado
        ..medicao = medicao
        ..eliminado = eliminado
        ..lastInteractionDt = lastInteractionDt
        ..userId = userId
        ..createDt = createDt
        ..orgaoId = orgaoId
        ..codServId = codServId
        ..selection = selection,
    ),
  );

  return firestoreData;
}
