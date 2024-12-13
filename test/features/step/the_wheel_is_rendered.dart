import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_code_challenge/presentation/home/widget/progress_wheel.dart';

/// Usage: the wheel is rendered
Future<void> theWheelIsRendered(WidgetTester tester) async {
  // Wait for the wheel to be rendered
  await tester.pump();
  await tester.pumpAndSettle();
  
  // Verify the wheel is present
  expect(find.byType(ProgressWheel), findsOneWidget);
}
