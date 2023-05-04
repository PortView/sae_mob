// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tarefas_base_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TarefasBaseRecord> _$tarefasBaseRecordSerializer =
    new _$TarefasBaseRecordSerializer();

class _$TarefasBaseRecordSerializer
    implements StructuredSerializer<TarefasBaseRecord> {
  @override
  final Iterable<Type> types = const [TarefasBaseRecord, _$TarefasBaseRecord];
  @override
  final String wireName = 'TarefasBaseRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TarefasBaseRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.createDt;
    if (value != null) {
      result
        ..add('createDt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ativo;
    if (value != null) {
      result
        ..add('ativo')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.descricao;
    if (value != null) {
      result
        ..add('descricao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ordem;
    if (value != null) {
      result
        ..add('ordem')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.te;
    if (value != null) {
      result
        ..add('TE')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.medicao;
    if (value != null) {
      result
        ..add('medicao')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.eliminado;
    if (value != null) {
      result
        ..add('eliminado')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.eliminadoDt;
    if (value != null) {
      result
        ..add('eliminadoDt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.selection;
    if (value != null) {
      result
        ..add('selection')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  TarefasBaseRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TarefasBaseRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'createDt':
          result.createDt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'ativo':
          result.ativo = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'descricao':
          result.descricao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ordem':
          result.ordem = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'TE':
          result.te = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'medicao':
          result.medicao = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'eliminado':
          result.eliminado = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'eliminadoDt':
          result.eliminadoDt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'selection':
          result.selection = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$TarefasBaseRecord extends TarefasBaseRecord {
  @override
  final DateTime? createDt;
  @override
  final bool? ativo;
  @override
  final String? descricao;
  @override
  final int? ordem;
  @override
  final int? te;
  @override
  final bool? medicao;
  @override
  final DocumentReference<Object?>? userId;
  @override
  final bool? eliminado;
  @override
  final DateTime? eliminadoDt;
  @override
  final bool? selection;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TarefasBaseRecord(
          [void Function(TarefasBaseRecordBuilder)? updates]) =>
      (new TarefasBaseRecordBuilder()..update(updates))._build();

  _$TarefasBaseRecord._(
      {this.createDt,
      this.ativo,
      this.descricao,
      this.ordem,
      this.te,
      this.medicao,
      this.userId,
      this.eliminado,
      this.eliminadoDt,
      this.selection,
      this.ffRef})
      : super._();

  @override
  TarefasBaseRecord rebuild(void Function(TarefasBaseRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TarefasBaseRecordBuilder toBuilder() =>
      new TarefasBaseRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TarefasBaseRecord &&
        createDt == other.createDt &&
        ativo == other.ativo &&
        descricao == other.descricao &&
        ordem == other.ordem &&
        te == other.te &&
        medicao == other.medicao &&
        userId == other.userId &&
        eliminado == other.eliminado &&
        eliminadoDt == other.eliminadoDt &&
        selection == other.selection &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createDt.hashCode);
    _$hash = $jc(_$hash, ativo.hashCode);
    _$hash = $jc(_$hash, descricao.hashCode);
    _$hash = $jc(_$hash, ordem.hashCode);
    _$hash = $jc(_$hash, te.hashCode);
    _$hash = $jc(_$hash, medicao.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, eliminado.hashCode);
    _$hash = $jc(_$hash, eliminadoDt.hashCode);
    _$hash = $jc(_$hash, selection.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TarefasBaseRecord')
          ..add('createDt', createDt)
          ..add('ativo', ativo)
          ..add('descricao', descricao)
          ..add('ordem', ordem)
          ..add('te', te)
          ..add('medicao', medicao)
          ..add('userId', userId)
          ..add('eliminado', eliminado)
          ..add('eliminadoDt', eliminadoDt)
          ..add('selection', selection)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TarefasBaseRecordBuilder
    implements Builder<TarefasBaseRecord, TarefasBaseRecordBuilder> {
  _$TarefasBaseRecord? _$v;

  DateTime? _createDt;
  DateTime? get createDt => _$this._createDt;
  set createDt(DateTime? createDt) => _$this._createDt = createDt;

  bool? _ativo;
  bool? get ativo => _$this._ativo;
  set ativo(bool? ativo) => _$this._ativo = ativo;

  String? _descricao;
  String? get descricao => _$this._descricao;
  set descricao(String? descricao) => _$this._descricao = descricao;

  int? _ordem;
  int? get ordem => _$this._ordem;
  set ordem(int? ordem) => _$this._ordem = ordem;

  int? _te;
  int? get te => _$this._te;
  set te(int? te) => _$this._te = te;

  bool? _medicao;
  bool? get medicao => _$this._medicao;
  set medicao(bool? medicao) => _$this._medicao = medicao;

  DocumentReference<Object?>? _userId;
  DocumentReference<Object?>? get userId => _$this._userId;
  set userId(DocumentReference<Object?>? userId) => _$this._userId = userId;

  bool? _eliminado;
  bool? get eliminado => _$this._eliminado;
  set eliminado(bool? eliminado) => _$this._eliminado = eliminado;

  DateTime? _eliminadoDt;
  DateTime? get eliminadoDt => _$this._eliminadoDt;
  set eliminadoDt(DateTime? eliminadoDt) => _$this._eliminadoDt = eliminadoDt;

  bool? _selection;
  bool? get selection => _$this._selection;
  set selection(bool? selection) => _$this._selection = selection;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TarefasBaseRecordBuilder() {
    TarefasBaseRecord._initializeBuilder(this);
  }

  TarefasBaseRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createDt = $v.createDt;
      _ativo = $v.ativo;
      _descricao = $v.descricao;
      _ordem = $v.ordem;
      _te = $v.te;
      _medicao = $v.medicao;
      _userId = $v.userId;
      _eliminado = $v.eliminado;
      _eliminadoDt = $v.eliminadoDt;
      _selection = $v.selection;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TarefasBaseRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TarefasBaseRecord;
  }

  @override
  void update(void Function(TarefasBaseRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TarefasBaseRecord build() => _build();

  _$TarefasBaseRecord _build() {
    final _$result = _$v ??
        new _$TarefasBaseRecord._(
            createDt: createDt,
            ativo: ativo,
            descricao: descricao,
            ordem: ordem,
            te: te,
            medicao: medicao,
            userId: userId,
            eliminado: eliminado,
            eliminadoDt: eliminadoDt,
            selection: selection,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
