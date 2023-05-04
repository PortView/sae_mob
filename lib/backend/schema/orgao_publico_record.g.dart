// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orgao_publico_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrgaoPublicoRecord> _$orgaoPublicoRecordSerializer =
    new _$OrgaoPublicoRecordSerializer();

class _$OrgaoPublicoRecordSerializer
    implements StructuredSerializer<OrgaoPublicoRecord> {
  @override
  final Iterable<Type> types = const [OrgaoPublicoRecord, _$OrgaoPublicoRecord];
  @override
  final String wireName = 'OrgaoPublicoRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, OrgaoPublicoRecord object,
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
    value = object.nome;
    if (value != null) {
      result
        ..add('nome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.epresaId;
    if (value != null) {
      result
        ..add('epresaId')
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
  OrgaoPublicoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrgaoPublicoRecordBuilder();

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
        case 'nome':
          result.nome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'epresaId':
          result.epresaId = serializers.deserialize(value,
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

class _$OrgaoPublicoRecord extends OrgaoPublicoRecord {
  @override
  final DateTime? createDt;
  @override
  final String? nome;
  @override
  final int? epresaId;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$OrgaoPublicoRecord(
          [void Function(OrgaoPublicoRecordBuilder)? updates]) =>
      (new OrgaoPublicoRecordBuilder()..update(updates))._build();

  _$OrgaoPublicoRecord._({this.createDt, this.nome, this.epresaId, this.ffRef})
      : super._();

  @override
  OrgaoPublicoRecord rebuild(
          void Function(OrgaoPublicoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrgaoPublicoRecordBuilder toBuilder() =>
      new OrgaoPublicoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrgaoPublicoRecord &&
        createDt == other.createDt &&
        nome == other.nome &&
        epresaId == other.epresaId &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createDt.hashCode);
    _$hash = $jc(_$hash, nome.hashCode);
    _$hash = $jc(_$hash, epresaId.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrgaoPublicoRecord')
          ..add('createDt', createDt)
          ..add('nome', nome)
          ..add('epresaId', epresaId)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class OrgaoPublicoRecordBuilder
    implements Builder<OrgaoPublicoRecord, OrgaoPublicoRecordBuilder> {
  _$OrgaoPublicoRecord? _$v;

  DateTime? _createDt;
  DateTime? get createDt => _$this._createDt;
  set createDt(DateTime? createDt) => _$this._createDt = createDt;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  int? _epresaId;
  int? get epresaId => _$this._epresaId;
  set epresaId(int? epresaId) => _$this._epresaId = epresaId;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  OrgaoPublicoRecordBuilder() {
    OrgaoPublicoRecord._initializeBuilder(this);
  }

  OrgaoPublicoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createDt = $v.createDt;
      _nome = $v.nome;
      _epresaId = $v.epresaId;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrgaoPublicoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrgaoPublicoRecord;
  }

  @override
  void update(void Function(OrgaoPublicoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrgaoPublicoRecord build() => _build();

  _$OrgaoPublicoRecord _build() {
    final _$result = _$v ??
        new _$OrgaoPublicoRecord._(
            createDt: createDt, nome: nome, epresaId: epresaId, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
