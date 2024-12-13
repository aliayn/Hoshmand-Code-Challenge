import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_code_challenge/presentation/home/widget/home_screen.dart';

/// Usage: I am on the home screen
Future<void> iAmOnTheHomeScreen(WidgetTester tester) async {
  await tester.pumpWidget(
    const MaterialApp(
      home: HomeScreen(),
    ),
  );
  await tester.pumpAndSettle();
}
