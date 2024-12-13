import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_code_challenge/data/model/unit_model/unit_model.dart';
import '../../helpers/test_binding.dart';

/// Usage: the onSelect callback should be called with the middle unit
Future<void> theOnselectCallbackShouldBeCalledWithTheMiddleUnit(
    WidgetTester tester) async {
  final binding = CustomTestBinding.instance;
  final units = binding.getVariable('units') as List<UnitModel>;
  final selectedUnit = binding.getVariable('selectedUnit') as UnitModel;
  final onSelectCalled = binding.getVariable('onSelectCalled') as bool;
  
  expect(onSelectCalled, isTrue);
  expect(selectedUnit, equals(units[units.length ~/ 2]));
}
