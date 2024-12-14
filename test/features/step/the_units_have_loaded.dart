import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:hoshmand_code_challenge/data/model/unit_model/unit_model.dart';
import 'package:hoshmand_code_challenge/presentation/home/cubit/home_cubit.dart';
import 'package:hoshmand_code_challenge/presentation/home/widget/progress_wheel.dart';
import '../../helpers/test_binding.dart';

/// Usage: the units have loaded
Future<void> theUnitsHaveLoaded(WidgetTester tester) async {
  final binding = CustomTestBinding.instance;
  final units = binding.getVariable('units') as List<UnitModel>;
  print('Units in binding: ${units.length}');
  expect(units, isNotEmpty, reason: 'Units list should not be empty');
  
  // Get HomeCubit instance and verify it exists
  final homeCubit = GetIt.instance<HomeCubit>();
  expect(homeCubit, isNotNull, reason: 'HomeCubit should be registered');
  
  // Print current state
  print('Current HomeCubit state: ${homeCubit.state}');
  
  // Emit state with units
  homeCubit.emit(HomeState.unitList(units));
  await tester.pump();
  
  // Print new state
  print('New HomeCubit state: ${homeCubit.state}');
  
  // Find and verify ProgressWheel
  final progressWheelFinder = find.byType(ProgressWheel);
  expect(progressWheelFinder, findsOneWidget, reason: 'ProgressWheel should be in the widget tree');
  
  // Get ProgressWheel widget and verify its properties
  final progressWheel = tester.widget<ProgressWheel>(progressWheelFinder);
  print('Units in ProgressWheel: ${progressWheel.units.length}');
  
  // Verify ProgressWheel state
  expect(progressWheel.units, isNotEmpty, reason: 'ProgressWheel should have units');
  expect(progressWheel.units, equals(units), reason: 'ProgressWheel should have correct units');
  expect(progressWheel.isLoading, isFalse, reason: 'ProgressWheel should not be in loading state');
  
  // Set initial selected unit
  final middleIndex = units.length ~/ 2;
  homeCubit.setUnitContent(units[middleIndex]);
  
  await tester.pump();
  print('Final HomeCubit state: ${homeCubit.state}');
}
