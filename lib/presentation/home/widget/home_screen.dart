import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hoshmand_code_challenge/core/base/base_stateless.dart';
import 'package:hoshmand_code_challenge/presentation/home/cubit/home_cubit.dart';
import 'package:hoshmand_code_challenge/presentation/home/widget/progress_wheel.dart';
import 'package:hoshmand_code_challenge/presentation/home/widget/unit_content_list.dart';

class HomeScreen extends BaseStateless {
  const HomeScreen({super.key});

  @override
  Widget builder(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              _unitContentList(),
              _unitWheelList(),
            ],
          ),
        ),
      );

  Widget _unitWheelList() => BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            current.whenOrNull(
              loading: () => true,
              unitList: (units) => true,
            ) ??
            false,
        builder: (context, state) {
          final isLoading = state.whenOrNull(loading: () => true) ?? false;
          final units = state.whenOrNull(unitList: (units) => units);
          return ProgressWheel(
            height: 140,
            units: units ?? [],
            isLoading: isLoading,
            onSelect: (unit) {
              context.read<HomeCubit>().setUnitContent(unit);
            },
          );
        },
      );

  Widget _unitContentList() => BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            current.whenOrNull(
                loading: () => true,
                setUnitContent: (unit) => true,
                error: (error) => true) ??
            false,
        builder: (context, state) {
          final unit = state.whenOrNull(setUnitContent: (unit) => unit);
          final isLoading = state.whenOrNull(loading: () => true) ?? false;
          final error = state.whenOrNull(error: (error) => error);

          return Expanded(
            child: Padding(
              padding: const EdgeInsets.all(21.0),
              child: UnitContentItem(
                isLoading: isLoading,
                unit: unit,
                error: error,
                onTap: () {
                  // Handle tap
                },
                onRetry: () {
                  context.read<HomeCubit>().getAllUnits();
                },
              ),
            ),
          );
        },
      );
}
