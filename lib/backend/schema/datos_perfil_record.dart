import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'datos_perfil_record.g.dart';

abstract class DatosPerfilRecord
    implements Built<DatosPerfilRecord, DatosPerfilRecordBuilder> {
  static Serializer<DatosPerfilRecord> get serializer =>
      _$datosPerfilRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Nombre')
  String get nombre;

  @nullable
  @BuiltValueField(wireName: 'Email')
  String get email;

  @nullable
  @BuiltValueField(wireName: 'Edad')
  String get edad;

  @nullable
  @BuiltValueField(wireName: 'Telefono')
  String get telefono;

  @nullable
  @BuiltValueField(wireName: 'Color')
  String get color;

  @nullable
  @BuiltValueField(wireName: 'Comida')
  String get comida;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DatosPerfilRecordBuilder builder) => builder
    ..nombre = ''
    ..email = ''
    ..edad = ''
    ..telefono = ''
    ..color = ''
    ..comida = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DatosPerfil');

  static Stream<DatosPerfilRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<DatosPerfilRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  DatosPerfilRecord._();
  factory DatosPerfilRecord([void Function(DatosPerfilRecordBuilder) updates]) =
      _$DatosPerfilRecord;

  static DatosPerfilRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createDatosPerfilRecordData({
  String nombre,
  String email,
  String edad,
  String telefono,
  String color,
  String comida,
}) =>
    serializers.toFirestore(
        DatosPerfilRecord.serializer,
        DatosPerfilRecord((d) => d
          ..nombre = nombre
          ..email = email
          ..edad = edad
          ..telefono = telefono
          ..color = color
          ..comida = comida));
