import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_code_challenge/presentation/home/widget/home_screen.dart';

/// Usage: there is an error loading units
Future<void> thereIsAnErrorLoadingUnits(WidgetTester tester) async {
  // Simulate error state
  tester.widget<HomeScreen>(find.byType(HomeScreen));
  // You might need to modify your HomeScreen to expose a method to trigger error state
  // or use a mock provider to simulate the error
  
  await tester.pump();
}
