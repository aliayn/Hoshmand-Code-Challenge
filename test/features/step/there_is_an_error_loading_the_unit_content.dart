import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_code_challenge/presentation/home/widget/unit_content_list.dart';

/// Usage: there is an error loading the unit content
Future<void> thereIsAnErrorLoadingTheUnitContent(WidgetTester tester) async {
  // Simulate error state for unit content
  tester.widget<UnitContentItem>(
    find.byType(UnitContentItem),
  );
  
  // You might need to modify your UnitContentItem to expose a method to trigger error state
  // or use a mock provider to simulate the error
  
  await tester.pump();
  await tester.pumpAndSettle();
}
