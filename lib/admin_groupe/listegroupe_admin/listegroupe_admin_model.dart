import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'listegroupe_admin_widget.dart' show ListegroupeAdminWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class ListegroupeAdminModel extends FlutterFlowModel<ListegroupeAdminWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for simplesearchresults widget.
  final simplesearchresultsKey = GlobalKey();
  FocusNode? simplesearchresultsFocusNode;
  TextEditingController? simplesearchresultsController;
  String? simplesearchresultsSelectedOption;
  String? Function(BuildContext, String?)?
      simplesearchresultsControllerValidator;
  List<GroupesRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    simplesearchresultsFocusNode?.dispose();
  }
}
