import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_fam_plugin_1/flutter_fam_plugin_1.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_fam_plugin_1');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterFamPlugin_1.platformVersion, '42');
  });
}
