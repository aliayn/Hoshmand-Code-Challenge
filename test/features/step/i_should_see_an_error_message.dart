import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: I should see an error message
Future<void> iShouldSeeAnErrorMessage(WidgetTester tester) async {
  expect(find.byIcon(Icons.error_outline_rounded), findsOneWidget);
  expect(find.textContaining('خطا'), findsOneWidget);
}
