import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';
//:D
void main() {
  group('Validate title', () {
    final counterTextFinder = find.byValueKey('AlbumTitle');
    final idTextFinder = find.byValueKey('userId');
    FlutterDriver driver;
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });
    test('Validate Title', () async {
      expect(await driver.getText(counterTextFinder), 'Titulo Album');
    });
    test('Validate id', () async {
      expect(await driver.getText(idTextFinder), '12');
    });
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });
  });
}


