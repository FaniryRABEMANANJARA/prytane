import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'modifier_profil_widget.dart' show ModifierProfilWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModifierProfilModel extends FlutterFlowModel<ModifierProfilWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for nom widget.
  FocusNode? nomFocusNode;
  TextEditingController? nomController;
  String? Function(BuildContext, String?)? nomControllerValidator;
  // State field(s) for prenom widget.
  FocusNode? prenomFocusNode;
  TextEditingController? prenomController;
  String? Function(BuildContext, String?)? prenomControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityController;
  String? Function(BuildContext, String?)? cityControllerValidator;
  // State field(s) for telephone widget.
  FocusNode? telephoneFocusNode;
  TextEditingController? telephoneController;
  String? Function(BuildContext, String?)? telephoneControllerValidator;
  // State field(s) for lien widget.
  FocusNode? lienFocusNode;
  TextEditingController? lienController;
  String? Function(BuildContext, String?)? lienControllerValidator;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode;
  TextEditingController? myBioController;
  String? Function(BuildContext, String?)? myBioControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomFocusNode?.dispose();
    nomController?.dispose();

    prenomFocusNode?.dispose();
    prenomController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    cityFocusNode?.dispose();
    cityController?.dispose();

    telephoneFocusNode?.dispose();
    telephoneController?.dispose();

    lienFocusNode?.dispose();
    lienController?.dispose();

    myBioFocusNode?.dispose();
    myBioController?.dispose();
  }
}
