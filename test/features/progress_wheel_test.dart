// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_progress_wheel_is_in_loading_state.dart';
import './step/the_wheel_is_rendered.dart';
import './step/i_should_see_shimmer_loading_effects.dart';
import './step/i_should_see5_shimmer_items.dart';
import './step/i_have_a_list_of5_units.dart';
import './step/i_should_see_all_unit_names.dart';
import './step/the_middle_unit_should_be_selected.dart';
import './step/the_middle_unit_should_have_full_opacity.dart';
import './step/i_have_a_list_of_units.dart';
import './step/i_scroll_to_a_new_unit.dart';
import './step/the_selected_unit_should_update.dart';
import './step/the_onselect_callback_should_be_called_with_the_new_unit.dart';
import './step/the_selected_unit_should_have_full_opacity.dart';
import './step/other_units_should_have_reduced_opacity.dart';
import './step/the_wheel_is_first_rendered.dart';
import './step/the_onselect_callback_should_be_called_with_the_middle_unit.dart';

void main() {
  group('''Progress Wheel''', () {
    testWidgets('''Display loading state''', (tester) async {
      await theProgressWheelIsInLoadingState(tester);
      await theWheelIsRendered(tester);
      await iShouldSeeShimmerLoadingEffects(tester);
      await iShouldSee5ShimmerItems(tester);
    });
    testWidgets('''Display units''', (tester) async {
      await iHaveAListOf5Units(tester);
      await theWheelIsRendered(tester);
      await iShouldSeeAllUnitNames(tester);
      await theMiddleUnitShouldBeSelected(tester);
      await theMiddleUnitShouldHaveFullOpacity(tester);
    });
    testWidgets('''Select a unit''', (tester) async {
      await iHaveAListOfUnits(tester);
      await theWheelIsRendered(tester);
      await iScrollToANewUnit(tester);
      await theSelectedUnitShouldUpdate(tester);
      await theOnselectCallbackShouldBeCalledWithTheNewUnit(tester);
      await theSelectedUnitShouldHaveFullOpacity(tester);
      await otherUnitsShouldHaveReducedOpacity(tester);
    });
    testWidgets('''Initial unit selection''', (tester) async {
      await iHaveAListOfUnits(tester);
      await theWheelIsFirstRendered(tester);
      await theMiddleUnitShouldBeSelected(tester);
      await theOnselectCallbackShouldBeCalledWithTheMiddleUnit(tester);
    });
  });
}
