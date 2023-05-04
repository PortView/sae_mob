// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servicos_base_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ServicosBaseRecord> _$servicosBaseRecordSerializer =
    new _$ServicosBaseRecordSerializer();

class _$ServicosBaseRecordSerializer
    implements StructuredSerializer<ServicosBaseRecord> {
  @override
  final Iterable<Type> types = const [ServicosBaseRecord, _$ServicosBaseRecord];
  @override
  final String wireName = 'ServicosBaseRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ServicosBaseRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.descricao;
    if (value != null) {
      result
        ..add('descricao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.finalizado;
    if (value != null) {
      result
        ..add('finalizado')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.medicao;
    if (value != null) {
      result
        ..add('medicao')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.eliminado;
    if (value != null) {
      result
        ..add('eliminado')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.lastInteractionDt;
    if (value != null) {
      result
        ..add('lastInteractionDt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.createDt;
    if (value != null) {
      result
        ..add('createDt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.orgaoId;
    if (value != null) {
      result
        ..add('orgaoId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.codServId;
    if (value != null) {
      result
        ..add('codServId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  ServicosBaseRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServicosBaseRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'descricao':
          result.descricao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'finalizado':
          result.finalizado = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'medicao':
          result.medicao = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'eliminado':
          result.eliminado = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'lastInteractionDt':
          result.lastInteractionDt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'createDt':
          result.createDt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'orgaoId':
          result.orgaoId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'codServId':
          result.codServId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$ServicosBaseRecord extends ServicosBaseRecord {
  @override
  final String? descricao;
  @override
  final bool? finalizado;
  @override
  final bool? medicao;
  @override
  final bool? eliminado;
  @override
  final DateTime? lastInteractionDt;
  @override
  final DocumentReference<Object?>? userId;
  @override
  final DateTime? createDt;
  @override
  final DocumentReference<Object?>? orgaoId;
  @override
  final DocumentReference<Object?>? codServId;
  @override
  final bool? selection;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ServicosBaseRecord(
          [void Function(ServicosBaseRecordBuilder)? updates]) =>
      (new ServicosBaseRecordBuilder()..update(updates))._build();

  _$ServicosBaseRecord._(
      {this.descricao,
      this.finalizado,
      this.medicao,
      this.eliminado,
      this.lastInteractionDt,
      this.userId,
      this.createDt,
      this.orgaoId,
      this.codServId,
      this.selection,
      this.ffRef})
      : super._();

  @override
  ServicosBaseRecord rebuild(
          void Function(ServicosBaseRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServicosBaseRecordBuilder toBuilder() =>
      new ServicosBaseRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServicosBaseRecord &&
        descricao == other.descricao &&
        finalizado == other.finalizado &&
        medicao == other.medicao &&
        eliminado == other.eliminado &&
        lastInteractionDt == other.lastInteractionDt &&
        userId == other.userId &&
        createDt == other.createDt &&
        orgaoId == other.orgaoId &&
        codServId == other.codServId &&
        selection == other.selection &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, descricao.hashCode);
    _$hash = $jc(_$hash, finalizado.hashCode);
    _$hash = $jc(_$hash, medicao.hashCode);
    _$hash = $jc(_$hash, eliminado.hashCode);
    _$hash = $jc(_$hash, lastInteractionDt.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, createDt.hashCode);
    _$hash = $jc(_$hash, orgaoId.hashCode);
    _$hash = $jc(_$hash, codServId.hashCode);
    _$hash = $jc(_$hash, selection.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServicosBaseRecord')
          ..add('descricao', descricao)
          ..add('finalizado', finalizado)
          ..add('medicao', medicao)
          ..add('eliminado', eliminado)
          ..add('lastInteractionDt', lastInteractionDt)
          ..add('userId', userId)
          ..add('createDt', createDt)
          ..add('orgaoId', orgaoId)
          ..add('codServId', codServId)
          ..add('selection', selection)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ServicosBaseRecordBuilder
    implements Builder<ServicosBaseRecord, ServicosBaseRecordBuilder> {
  _$ServicosBaseRecord? _$v;

  String? _descricao;
  String? get descricao => _$this._descricao;
  set descricao(String? descricao) => _$this._descricao = descricao;

  bool? _finalizado;
  bool? get finalizado => _$this._finalizado;
  set finalizado(bool? finalizado) => _$this._finalizado = finalizado;

  bool? _medicao;
  bool? get medicao => _$this._medicao;
  set medicao(bool? medicao) => _$this._medicao = medicao;

  bool? _eliminado;
  bool? get eliminado => _$this._eliminado;
  set eliminado(bool? eliminado) => _$this._eliminado = eliminado;

  DateTime? _lastInteractionDt;
  DateTime? get lastInteractionDt => _$this._lastInteractionDt;
  set lastInteractionDt(DateTime? lastInteractionDt) =>
      _$this._lastInteractionDt = lastInteractionDt;

  DocumentReference<Object?>? _userId;
  DocumentReference<Object?>? get userId => _$this._userId;
  set userId(DocumentReference<Object?>? userId) => _$this._userId = userId;

  DateTime? _createDt;
  DateTime? get createDt => _$this._createDt;
  set createDt(DateTime? createDt) => _$this._createDt = createDt;

  DocumentReference<Object?>? _orgaoId;
  DocumentReference<Object?>? get orgaoId => _$this._orgaoId;
  set orgaoId(DocumentReference<Object?>? orgaoId) => _$this._orgaoId = orgaoId;

  DocumentReference<Object?>? _codServId;
  DocumentReference<Object?>? get codServId => _$this._codServId;
  set codServId(DocumentReference<Object?>? codServId) =>
      _$this._codServId = codServId;

  bool? _selection;
  bool? get selection => _$this._selection;
  set selection(bool? selection) => _$this._selection = selection;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ServicosBaseRecordBuilder() {
    ServicosBaseRecord._initializeBuilder(this);
  }

  ServicosBaseRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _descricao = $v.descricao;
      _finalizado = $v.finalizado;
      _medicao = $v.medicao;
      _eliminado = $v.eliminado;
      _lastInteractionDt = $v.lastInteractionDt;
      _userId = $v.userId;
      _createDt = $v.createDt;
      _orgaoId = $v.orgaoId;
      _codServId = $v.codServId;
      _selection = $v.selection;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServicosBaseRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServicosBaseRecord;
  }

  @override
  void update(void Function(ServicosBaseRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServicosBaseRecord build() => _build();

  _$ServicosBaseRecord _build() {
    final _$result = _$v ??
        new _$ServicosBaseRecord._(
            descricao: descricao,
            finalizado: finalizado,
            medicao: medicao,
            eliminado: eliminado,
            lastInteractionDt: lastInteractionDt,
            userId: userId,
            createDt: createDt,
            orgaoId: orgaoId,
            codServId: codServId,
            selection: selection,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
