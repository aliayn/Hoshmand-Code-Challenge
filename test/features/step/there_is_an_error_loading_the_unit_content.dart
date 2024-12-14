import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_code_challenge/presentation/home/widget/unit_content_list.dart';

/// Usage: there is an error loading the unit content
Future<void> thereIsAnErrorLoadingTheUnitContent(WidgetTester tester) async {
  tester.widget<UnitContentItem>(
    find.byType(UnitContentItem),
  );
  
  await tester.pump();
  await tester.pump(const Duration(milliseconds: 100));
}
