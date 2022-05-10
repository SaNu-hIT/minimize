
import 'dart:async';

import 'package:flutter/services.dart';

class MinimizeApp {
  static const MethodChannel _channel = MethodChannel('minimize_app');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String?> get minimizeApp async {
    await _channel.invokeMethod('minimize_apps').catchError((error) => print("Error: $error"));
    return "success";
  }


}
