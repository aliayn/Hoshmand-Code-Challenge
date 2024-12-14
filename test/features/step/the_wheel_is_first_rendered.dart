import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_code_challenge/presentation/home/widget/progress_wheel.dart';
import '../../helpers/test_binding.dart';

/// Usage: the wheel is first rendered
Future<void> theWheelIsFirstRendered(WidgetTester tester) async {
  await tester.pump();
  await tester.pump(const Duration(milliseconds: 100));
  
  expect(find.byType(ProgressWheel), findsOneWidget);
  
  final binding = CustomTestBinding.instance;
  final units = binding.getVariable('units') as List<dynamic>;
  final middleIndex = units.length ~/ 2;
  binding.setVariable('selectedIndex', middleIndex);
}
