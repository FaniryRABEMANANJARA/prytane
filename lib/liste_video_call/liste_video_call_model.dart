import '/backend/backend.dart';
import '/components/nav_bar2_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'liste_video_call_widget.dart' show ListeVideoCallWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListeVideoCallModel extends FlutterFlowModel<ListeVideoCallWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavBar2 component.
  late NavBar2Model navBar2Model;

  @override
  void initState(BuildContext context) {
    navBar2Model = createModel(context, () => NavBar2Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navBar2Model.dispose();
  }
}
