import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'ajoutevenement_widget.dart' show AjoutevenementWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AjoutevenementModel extends FlutterFlowModel<AjoutevenementWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  DateTime? datePicked1;
  // State field(s) for titre widget.
  FocusNode? titreFocusNode;
  TextEditingController? titreController;
  String? Function(BuildContext, String?)? titreControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  DateTime? datePicked2;
  // State field(s) for emplacement widget.
  FocusNode? emplacementFocusNode;
  TextEditingController? emplacementController;
  String? Function(BuildContext, String?)? emplacementControllerValidator;
  // State field(s) for organisateur widget.
  FocusNode? organisateurFocusNode;
  TextEditingController? organisateurController;
  String? Function(BuildContext, String?)? organisateurControllerValidator;
  // State field(s) for participant widget.
  FocusNode? participantFocusNode;
  TextEditingController? participantController;
  String? Function(BuildContext, String?)? participantControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    titreFocusNode?.dispose();
    titreController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionController?.dispose();

    emplacementFocusNode?.dispose();
    emplacementController?.dispose();

    organisateurFocusNode?.dispose();
    organisateurController?.dispose();

    participantFocusNode?.dispose();
    participantController?.dispose();
  }
}
