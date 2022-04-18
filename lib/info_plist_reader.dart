import 'package:flutter/services.dart';

class InfoPlistReader {
  static const MethodChannel _channel = MethodChannel('info_plist_reader');

  static Future<String?> getValue(String key) async {
    final String? value =
        await _channel.invokeMethod('InfoPlist', {"key": key});
    return value;
  }
}
