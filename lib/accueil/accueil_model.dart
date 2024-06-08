import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/commentaire_widget.dart';
import '/components/nav_bar1_widget.dart';
import '/components/parametres_widget.dart';
import '/flutter_flow/flutter_flow_media_display.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'accueil_widget.dart' show AccueilWidget;
import 'package:badges/badges.dart' as badges;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AccueilModel extends FlutterFlowModel<AccueilWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavBar1 component.
  late NavBar1Model navBar1Model;

  @override
  void initState(BuildContext context) {
    navBar1Model = createModel(context, () => NavBar1Model());
  }

  @override
  void dispose() {
    navBar1Model.dispose();
  }
}
