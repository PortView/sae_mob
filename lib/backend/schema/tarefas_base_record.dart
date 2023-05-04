import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'tarefas_base_record.g.dart';

abstract class TarefasBaseRecord
    implements Built<TarefasBaseRecord, TarefasBaseRecordBuilder> {
  static Serializer<TarefasBaseRecord> get serializer =>
      _$tarefasBaseRecordSerializer;

  DateTime? get createDt;

  bool? get ativo;

  String? get descricao;

  int? get ordem;

  @BuiltValueField(wireName: 'TE')
  int? get te;

  bool? get medicao;

  DocumentReference? get userId;

  bool? get eliminado;

  DateTime? get eliminadoDt;

  bool? get selection;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TarefasBaseRecordBuilder builder) => builder
    ..ativo = false
    ..descricao = ''
    ..ordem = 0
    ..te = 0
    ..medicao = false
    ..eliminado = false
    ..selection = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tarefasBase');

  static Stream<TarefasBaseRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TarefasBaseRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TarefasBaseRecord._();
  factory TarefasBaseRecord([void Function(TarefasBaseRecordBuilder) updates]) =
      _$TarefasBaseRecord;

  static TarefasBaseRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTarefasBaseRecordData({
  DateTime? createDt,
  bool? ativo,
  String? descricao,
  int? ordem,
  int? te,
  bool? medicao,
  DocumentReference? userId,
  bool? eliminado,
  DateTime? eliminadoDt,
  bool? selection,
}) {
  final firestoreData = serializers.toFirestore(
    TarefasBaseRecord.serializer,
    TarefasBaseRecord(
      (t) => t
        ..createDt = createDt
        ..ativo = ativo
        ..descricao = descricao
        ..ordem = ordem
        ..te = te
        ..medicao = medicao
        ..userId = userId
        ..eliminado = eliminado
        ..eliminadoDt = eliminadoDt
        ..selection = selection,
    ),
  );

  return firestoreData;
}
