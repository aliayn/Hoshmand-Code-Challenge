import 'package:flutter_test/flutter_test.dart';

/// Usage: I scroll to a new unit
Future<void> iScrollToANewUnit(WidgetTester tester) async {
  final gesture = await tester.startGesture(const Offset(400, 300));
  await gesture.moveBy(const Offset(0, -100));
  await gesture.up();
  await tester.pumpAndSettle();
}
