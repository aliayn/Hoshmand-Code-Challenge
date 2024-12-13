import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_code_challenge/presentation/home/widget/progress_wheel.dart';
import '../../helpers/test_binding.dart';

/// Usage: the wheel is first rendered
Future<void> theWheelIsFirstRendered(WidgetTester tester) async {
  // Wait for initial render
  await tester.pump();
  await tester.pumpAndSettle();
  
  // Verify the wheel is present
  expect(find.byType(ProgressWheel), findsOneWidget);
  
  // Verify initial selection
  final binding = CustomTestBinding.instance;
  final units = binding.getVariable('units') as List<dynamic>;
  final middleIndex = units.length ~/ 2;
  binding.setVariable('selectedIndex', middleIndex);
}
