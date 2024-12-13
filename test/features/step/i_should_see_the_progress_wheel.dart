import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_code_challenge/presentation/home/widget/progress_wheel.dart';

/// Usage: I should see the progress wheel
Future<void> iShouldSeeTheProgressWheel(WidgetTester tester) async {
  expect(find.byType(ProgressWheel), findsOneWidget);
}
