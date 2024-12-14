import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:hoshmand_code_challenge/data/model/unit_model/unit_model.dart';
import 'package:hoshmand_code_challenge/presentation/home/cubit/home_cubit.dart';
import '../../helpers/test_binding.dart';

/// Usage: I select a different unit
Future<void> iSelectADifferentUnit(WidgetTester tester) async {
  final binding = CustomTestBinding.instance;
  final units = binding.getVariable('units') as List<UnitModel>;
  final selectedIndex = 1; // Select the second unit
  
  final homeCubit = GetIt.instance<HomeCubit>();
  homeCubit.setUnitContent(units[selectedIndex]);
  
  binding.setVariable('selectedIndex', selectedIndex);
  
  await tester.pump();
  await tester.pump(const Duration(milliseconds: 100));
}
