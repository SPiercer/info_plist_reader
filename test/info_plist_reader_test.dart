import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:info_plist_reader/info_plist_reader.dart';

void main() {
  const MethodChannel channel = MethodChannel('info_plist_reader');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      if (methodCall.method == "InfoPlist") {
        return 'Success';
      }
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('get', () async {
    expect(await InfoPlistReader.getValue(""), 'Success');
  });
}
