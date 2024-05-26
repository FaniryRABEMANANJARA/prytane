import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'ajout_annonce_widget.dart' show AjoutAnnonceWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AjoutAnnonceModel extends FlutterFlowModel<AjoutAnnonceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for titre widget.
  FocusNode? titreFocusNode;
  TextEditingController? titreTextController;
  String? Function(BuildContext, String?)? titreTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for type widget.
  String? typeValue;
  FormFieldController<String>? typeValueController;
  DateTime? datePicked;
  // State field(s) for localisation widget.
  FocusNode? localisationFocusNode;
  TextEditingController? localisationTextController;
  String? Function(BuildContext, String?)? localisationTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    titreFocusNode?.dispose();
    titreTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    localisationFocusNode?.dispose();
    localisationTextController?.dispose();
  }
}
