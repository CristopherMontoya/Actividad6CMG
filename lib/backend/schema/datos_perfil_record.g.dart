// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datos_perfil_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DatosPerfilRecord> _$datosPerfilRecordSerializer =
    new _$DatosPerfilRecordSerializer();

class _$DatosPerfilRecordSerializer
    implements StructuredSerializer<DatosPerfilRecord> {
  @override
  final Iterable<Type> types = const [DatosPerfilRecord, _$DatosPerfilRecord];
  @override
  final String wireName = 'DatosPerfilRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, DatosPerfilRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.nombre;
    if (value != null) {
      result
        ..add('Nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('Email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.edad;
    if (value != null) {
      result
        ..add('Edad')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.telefono;
    if (value != null) {
      result
        ..add('Telefono')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.color;
    if (value != null) {
      result
        ..add('Color')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comida;
    if (value != null) {
      result
        ..add('Comida')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  DatosPerfilRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DatosPerfilRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Edad':
          result.edad = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Telefono':
          result.telefono = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Comida':
          result.comida = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$DatosPerfilRecord extends DatosPerfilRecord {
  @override
  final String nombre;
  @override
  final String email;
  @override
  final String edad;
  @override
  final String telefono;
  @override
  final String color;
  @override
  final String comida;
  @override
  final DocumentReference<Object> reference;

  factory _$DatosPerfilRecord(
          [void Function(DatosPerfilRecordBuilder) updates]) =>
      (new DatosPerfilRecordBuilder()..update(updates)).build();

  _$DatosPerfilRecord._(
      {this.nombre,
      this.email,
      this.edad,
      this.telefono,
      this.color,
      this.comida,
      this.reference})
      : super._();

  @override
  DatosPerfilRecord rebuild(void Function(DatosPerfilRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DatosPerfilRecordBuilder toBuilder() =>
      new DatosPerfilRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DatosPerfilRecord &&
        nombre == other.nombre &&
        email == other.email &&
        edad == other.edad &&
        telefono == other.telefono &&
        color == other.color &&
        comida == other.comida &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, nombre.hashCode), email.hashCode),
                        edad.hashCode),
                    telefono.hashCode),
                color.hashCode),
            comida.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DatosPerfilRecord')
          ..add('nombre', nombre)
          ..add('email', email)
          ..add('edad', edad)
          ..add('telefono', telefono)
          ..add('color', color)
          ..add('comida', comida)
          ..add('reference', reference))
        .toString();
  }
}

class DatosPerfilRecordBuilder
    implements Builder<DatosPerfilRecord, DatosPerfilRecordBuilder> {
  _$DatosPerfilRecord _$v;

  String _nombre;
  String get nombre => _$this._nombre;
  set nombre(String nombre) => _$this._nombre = nombre;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _edad;
  String get edad => _$this._edad;
  set edad(String edad) => _$this._edad = edad;

  String _telefono;
  String get telefono => _$this._telefono;
  set telefono(String telefono) => _$this._telefono = telefono;

  String _color;
  String get color => _$this._color;
  set color(String color) => _$this._color = color;

  String _comida;
  String get comida => _$this._comida;
  set comida(String comida) => _$this._comida = comida;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  DatosPerfilRecordBuilder() {
    DatosPerfilRecord._initializeBuilder(this);
  }

  DatosPerfilRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _email = $v.email;
      _edad = $v.edad;
      _telefono = $v.telefono;
      _color = $v.color;
      _comida = $v.comida;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DatosPerfilRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DatosPerfilRecord;
  }

  @override
  void update(void Function(DatosPerfilRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DatosPerfilRecord build() {
    final _$result = _$v ??
        new _$DatosPerfilRecord._(
            nombre: nombre,
            email: email,
            edad: edad,
            telefono: telefono,
            color: color,
            comida: comida,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
