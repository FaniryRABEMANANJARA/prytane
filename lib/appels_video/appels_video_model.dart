import '/components/nav_bar2_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'appels_video_widget.dart' show AppelsVideoWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AppelsVideoModel extends FlutterFlowModel<AppelsVideoWidget> {
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
