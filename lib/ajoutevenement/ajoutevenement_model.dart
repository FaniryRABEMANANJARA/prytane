import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/nav_bar1_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'ajoutevenement_widget.dart' show AjoutevenementWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AjoutevenementModel extends FlutterFlowModel<AjoutevenementWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for titre widget.
  FocusNode? titreFocusNode;
  TextEditingController? titreTextController;
  String? Function(BuildContext, String?)? titreTextControllerValidator;
  // State field(s) for type widget.
  String? typeValue;
  FormFieldController<String>? typeValueController;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for emplacement widget.
  FocusNode? emplacementFocusNode;
  TextEditingController? emplacementTextController;
  String? Function(BuildContext, String?)? emplacementTextControllerValidator;
  // State field(s) for organisateur widget.
  FocusNode? organisateurFocusNode;
  TextEditingController? organisateurTextController;
  String? Function(BuildContext, String?)? organisateurTextControllerValidator;
  // State field(s) for participant widget.
  FocusNode? participantFocusNode;
  TextEditingController? participantTextController;
  String? Function(BuildContext, String?)? participantTextControllerValidator;
  // Model for NavBar1 component.
  late NavBar1Model navBar1Model;

  @override
  void initState(BuildContext context) {
    navBar1Model = createModel(context, () => NavBar1Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    titreFocusNode?.dispose();
    titreTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    emplacementFocusNode?.dispose();
    emplacementTextController?.dispose();

    organisateurFocusNode?.dispose();
    organisateurTextController?.dispose();

    participantFocusNode?.dispose();
    participantTextController?.dispose();

    navBar1Model.dispose();
  }
}
