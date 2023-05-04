import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'tarefas_servico_record.g.dart';

abstract class TarefasServicoRecord
    implements Built<TarefasServicoRecord, TarefasServicoRecordBuilder> {
  static Serializer<TarefasServicoRecord> get serializer =>
      _$tarefasServicoRecordSerializer;

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

  DocumentReference? get servBaseId;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TarefasServicoRecordBuilder builder) => builder
    ..ativo = false
    ..descricao = ''
    ..ordem = 0
    ..te = 0
    ..medicao = false
    ..eliminado = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tarefasServico');

  static Stream<TarefasServicoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TarefasServicoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TarefasServicoRecord._();
  factory TarefasServicoRecord(
          [void Function(TarefasServicoRecordBuilder) updates]) =
      _$TarefasServicoRecord;

  static TarefasServicoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTarefasServicoRecordData({
  DateTime? createDt,
  bool? ativo,
  String? descricao,
  int? ordem,
  int? te,
  bool? medicao,
  DocumentReference? userId,
  bool? eliminado,
  DateTime? eliminadoDt,
  DocumentReference? servBaseId,
}) {
  final firestoreData = serializers.toFirestore(
    TarefasServicoRecord.serializer,
    TarefasServicoRecord(
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
        ..servBaseId = servBaseId,
    ),
  );

  return firestoreData;
}
