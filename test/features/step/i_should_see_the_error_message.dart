import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: I should see the error message
Future<void> iShouldSeeTheErrorMessage(WidgetTester tester) async {
  expect(find.byIcon(Icons.error_outline_rounded), findsOneWidget);
  expect(find.text('خطا در بارگذاری'), findsOneWidget);
}
