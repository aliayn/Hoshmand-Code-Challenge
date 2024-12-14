import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:hoshmand_code_challenge/data/model/unit_model/unit_model.dart';
import 'package:hoshmand_code_challenge/presentation/home/cubit/home_cubit.dart';
import 'package:hoshmand_code_challenge/presentation/home/widget/home_screen.dart';
import '../../helpers/test_binding.dart';
import 'i_have_a_list_of_units.dart';

/// Usage: I am on the home screen
Future<void> iAmOnTheHomeScreen(WidgetTester tester) async {
  // Create and register HomeCubit
  final homeCubit = GetIt.instance.get<HomeCubit>();

  // Initialize units
  await iHaveAListOfUnits(tester);
  
  final binding = CustomTestBinding.instance;
  final units = binding.getVariable('units') as List<UnitModel>;
  print('Initial units count: ${units.length}');
  expect(units, isNotEmpty, reason: 'Units should be initialized');
  
  // Build widget tree with BlocProvider
  await tester.pumpWidget(
    MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider<HomeCubit>.value(value: homeCubit),
        ],
        child: const HomeScreen(),
      ),
    ),
  );
  
  // Process initial frame
  await tester.pump();
}
