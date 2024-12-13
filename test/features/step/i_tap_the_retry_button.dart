import 'package:flutter_test/flutter_test.dart';

/// Usage: I tap the retry button
Future<void> iTapTheRetryButton(WidgetTester tester) async {
  await tester.tap(find.text('تلاش مجدد'));
  await tester.pumpAndSettle();
}
