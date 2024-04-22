// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class CallVideo extends StatefulWidget {
  const CallVideo({
    super.key,
    this.width,
    this.height,
    required this.callID,
    required this.userID,
    required this.userName,
  });

  final double? width;
  final double? height;
  final String callID;
  final String userID;
  final String userName;

  @override
  State<CallVideo> createState() => _CallVideoState();
}

class _CallVideoState extends State<CallVideo> {
  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID:
          191322529, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign:
          "c551eb02786cb6155256f6cffed4222a183c4755497b1ece93c18941a0ad56c0", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: 'user_id',
      userName: 'user_name',
      callID: "callID",
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
