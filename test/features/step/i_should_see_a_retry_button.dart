import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: I should see a retry button
Future<void> iShouldSeeARetryButton(WidgetTester tester) async {
  expect(find.text('تلاش مجدد'), findsOneWidget);
  expect(find.byIcon(Icons.refresh_rounded), findsOneWidget);
}
