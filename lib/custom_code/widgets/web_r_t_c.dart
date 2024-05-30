// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class WebRTC extends StatefulWidget {
  const WebRTC({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<WebRTC> createState() => _WebRTCState();
}

class _WebRTCState extends State<WebRTC> {
  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: 191322529, // your AppID,
      appSign:
          'c551eb02786cb6155256f6cffed4222a183c4755497b1ece93c18941a0ad56c0',
      userID: 'local user id',
      userName: 'local user name',
      callID: 'call id',
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
