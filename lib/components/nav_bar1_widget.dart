import '/components/action_add_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nav_bar1_model.dart';
export 'nav_bar1_model.dart';

class NavBar1Widget extends StatefulWidget {
  const NavBar1Widget({
    super.key,
    int? selectedpage,
    bool? hidden,
  })  : this.selectedpage = selectedpage ?? 1,
        this.hidden = hidden ?? false;

  final int selectedpage;
  final bool hidden;

  @override
  State<NavBar1Widget> createState() => _NavBar1WidgetState();
}

class _NavBar1WidgetState extends State<NavBar1Widget>
    with TickerProviderStateMixin {
  late NavBar1Model _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBar1Model());

    animationsMap.addAll({
      'dividerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.6, 1.0),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dividerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.6, 1.0),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dividerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.6, 1.0),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dividerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.6, 1.0),
            end: Offset(1.0, 1.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
      child: Container(
        width: 360.0,
        height: 80.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              FlutterFlowTheme.of(context).secondary,
              FlutterFlowTheme.of(context).success
            ],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(0.0, -1.0),
            end: AlignmentDirectional(0, 1.0),
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16.0),
            bottomRight: Radius.circular(16.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: widget.selectedpage == 1 ? 1.0 : 0.5,
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    buttonSize: 50.0,
                    icon: Icon(
                      Icons.cottage_outlined,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.goNamed(
                        'Accueil',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                  ),
                ),
                if (widget.selectedpage == 1)
                  SizedBox(
                    width: 30.0,
                    child: Divider(
                      height: 2.0,
                      thickness: 2.0,
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['dividerOnPageLoadAnimation1']!),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: widget.selectedpage == 2 ? 1.0 : 0.5,
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    buttonSize: 50.0,
                    icon: Icon(
                      Icons.chat_bubble_outline,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.goNamed(
                        'chat_2_main',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                  ),
                ),
                if (widget.selectedpage == 2)
                  SizedBox(
                    width: 30.0,
                    child: Divider(
                      height: 2.0,
                      thickness: 2.0,
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['dividerOnPageLoadAnimation2']!),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 25.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                fillColor: FlutterFlowTheme.of(context).primary,
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: ActionAddWidget(),
                      );
                    },
                  ).then((value) => safeSetState(() {}));
                },
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: widget.selectedpage == 3 ? 1.0 : 0.5,
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    buttonSize: 50.0,
                    icon: Icon(
                      Icons.groups_outlined,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.goNamed(
                        'Listegroupe',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                  ),
                ),
                if (widget.selectedpage == 3)
                  SizedBox(
                    width: 30.0,
                    child: Divider(
                      height: 2.0,
                      thickness: 2.0,
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['dividerOnPageLoadAnimation3']!),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: widget.selectedpage == 4 ? 1.0 : 0.5,
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    buttonSize: 50.0,
                    icon: Icon(
                      Icons.person_outlined,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.goNamed(
                        'profilMembreCommunautairre',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                  ),
                ),
                if (widget.selectedpage == 4)
                  SizedBox(
                    width: 30.0,
                    child: Divider(
                      height: 2.0,
                      thickness: 2.0,
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['dividerOnPageLoadAnimation4']!),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
