// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'codigos_serv_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CodigosServRecord> _$codigosServRecordSerializer =
    new _$CodigosServRecordSerializer();

class _$CodigosServRecordSerializer
    implements StructuredSerializer<CodigosServRecord> {
  @override
  final Iterable<Type> types = const [CodigosServRecord, _$CodigosServRecord];
  @override
  final String wireName = 'CodigosServRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CodigosServRecord object,
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
    value = object.codigo;
    if (value != null) {
      result
        ..add('codigo')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.descricao;
    if (value != null) {
      result
        ..add('descricao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.empresId;
    if (value != null) {
      result
        ..add('empresId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.grupo;
    if (value != null) {
      result
        ..add('grupo')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  CodigosServRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CodigosServRecordBuilder();

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
        case 'codigo':
          result.codigo = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'descricao':
          result.descricao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'empresId':
          result.empresId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'grupo':
          result.grupo = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$CodigosServRecord extends CodigosServRecord {
  @override
  final DateTime? createDt;
  @override
  final int? codigo;
  @override
  final String? descricao;
  @override
  final int? empresId;
  @override
  final int? grupo;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CodigosServRecord(
          [void Function(CodigosServRecordBuilder)? updates]) =>
      (new CodigosServRecordBuilder()..update(updates))._build();

  _$CodigosServRecord._(
      {this.createDt,
      this.codigo,
      this.descricao,
      this.empresId,
      this.grupo,
      this.ffRef})
      : super._();

  @override
  CodigosServRecord rebuild(void Function(CodigosServRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CodigosServRecordBuilder toBuilder() =>
      new CodigosServRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CodigosServRecord &&
        createDt == other.createDt &&
        codigo == other.codigo &&
        descricao == other.descricao &&
        empresId == other.empresId &&
        grupo == other.grupo &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createDt.hashCode);
    _$hash = $jc(_$hash, codigo.hashCode);
    _$hash = $jc(_$hash, descricao.hashCode);
    _$hash = $jc(_$hash, empresId.hashCode);
    _$hash = $jc(_$hash, grupo.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CodigosServRecord')
          ..add('createDt', createDt)
          ..add('codigo', codigo)
          ..add('descricao', descricao)
          ..add('empresId', empresId)
          ..add('grupo', grupo)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CodigosServRecordBuilder
    implements Builder<CodigosServRecord, CodigosServRecordBuilder> {
  _$CodigosServRecord? _$v;

  DateTime? _createDt;
  DateTime? get createDt => _$this._createDt;
  set createDt(DateTime? createDt) => _$this._createDt = createDt;

  int? _codigo;
  int? get codigo => _$this._codigo;
  set codigo(int? codigo) => _$this._codigo = codigo;

  String? _descricao;
  String? get descricao => _$this._descricao;
  set descricao(String? descricao) => _$this._descricao = descricao;

  int? _empresId;
  int? get empresId => _$this._empresId;
  set empresId(int? empresId) => _$this._empresId = empresId;

  int? _grupo;
  int? get grupo => _$this._grupo;
  set grupo(int? grupo) => _$this._grupo = grupo;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CodigosServRecordBuilder() {
    CodigosServRecord._initializeBuilder(this);
  }

  CodigosServRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createDt = $v.createDt;
      _codigo = $v.codigo;
      _descricao = $v.descricao;
      _empresId = $v.empresId;
      _grupo = $v.grupo;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CodigosServRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CodigosServRecord;
  }

  @override
  void update(void Function(CodigosServRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CodigosServRecord build() => _build();

  _$CodigosServRecord _build() {
    final _$result = _$v ??
        new _$CodigosServRecord._(
            createDt: createDt,
            codigo: codigo,
            descricao: descricao,
            empresId: empresId,
            grupo: grupo,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
