import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CrearPerfileWidget extends StatefulWidget {
  const CrearPerfileWidget({Key key}) : super(key: key);

  @override
  _CrearPerfileWidgetState createState() => _CrearPerfileWidgetState();
}

class _CrearPerfileWidgetState extends State<CrearPerfileWidget> {
  TextEditingController colorController;
  TextEditingController edadController;
  TextEditingController emailController;
  TextEditingController nombreController;
  TextEditingController telefonoController;
  TextEditingController comidaController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    colorController = TextEditingController();
    edadController = TextEditingController();
    emailController = TextEditingController();
    nombreController = TextEditingController();
    telefonoController = TextEditingController();
    comidaController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          flexibleSpace: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 10, 0, 0),
                child: Text(
                  'Crear Perfil',
                  style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFFFF8800),
                        fontSize: 32,
                      ),
                ),
              ),
            ],
          ),
          actions: [],
          elevation: 0,
        ),
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                    child: Text(
                      'Cree su perfil completando la información a continuación para acceder a la aplicación.',
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24, 14, 24, 0),
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Color(0x4D101213),
                    offset: Offset(0, 2),
                  )
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextFormField(
                controller: nombreController,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  labelStyle: FlutterFlowTheme.of(context).bodyText2,
                  hintText: 'Ingresa tu nombre',
                  hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Color(0xFFFF8800),
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                ),
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 0),
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Color(0x4D101213),
                    offset: Offset(0, 2),
                  )
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextFormField(
                controller: emailController,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: FlutterFlowTheme.of(context).bodyText2,
                  hintText: 'Ingresa tu Email',
                  hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Color(0xFFFF8800),
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                ),
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 0),
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Color(0x4D101213),
                    offset: Offset(0, 2),
                  )
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextFormField(
                controller: edadController,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Edad',
                  labelStyle: FlutterFlowTheme.of(context).bodyText2,
                  hintText: 'Ingresa tu edad',
                  hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Color(0xFFFF8800),
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                ),
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 0),
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Color(0x4D101213),
                    offset: Offset(0, 2),
                  )
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextFormField(
                controller: telefonoController,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Telefono',
                  labelStyle: FlutterFlowTheme.of(context).bodyText2,
                  hintText: 'Ingresa tu numero telefonico',
                  hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Color(0xFFFF8800),
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                ),
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 0),
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Color(0x4D101213),
                    offset: Offset(0, 2),
                  )
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextFormField(
                controller: colorController,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Color Favorito',
                  labelStyle: FlutterFlowTheme.of(context).bodyText2,
                  hintText: 'Ingresa tu color favorito',
                  hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Color(0xFFFF8800),
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                ),
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 0),
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Color(0x4D101213),
                    offset: Offset(0, 2),
                  )
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextFormField(
                controller: comidaController,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Comida Favorita',
                  labelStyle: FlutterFlowTheme.of(context).bodyText2,
                  hintText: 'Ingresa tu comida favorita',
                  hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Color(0xFFFF8800),
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                ),
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
            child: FFButtonWidget(
              onPressed: () async {
                final datosPerfilCreateData = createDatosPerfilRecordData(
                  nombre: nombreController.text,
                  email: emailController.text,
                  edad: edadController.text,
                  telefono: telefonoController.text,
                  color: colorController.text,
                  comida: comidaController.text,
                );
                await DatosPerfilRecord.collection
                    .doc()
                    .set(datosPerfilCreateData);
                await showDialog(
                  context: context,
                  builder: (alertDialogContext) {
                    return AlertDialog(
                      title: Text('Hecho'),
                      content: Text('Tu perfil se ha creado'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(alertDialogContext),
                          child: Text('aceptar'),
                        ),
                      ],
                    );
                  },
                );
              },
              text: 'Crear Perfil',
              options: FFButtonOptions(
                width: 270,
                height: 50,
                color: Color(0xFFFF8800),
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      fontSize: 16,
                    ),
                elevation: 3,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: 8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
