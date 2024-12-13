// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/test_binding.dart';
import './step/i_am_on_the_home_screen.dart';
import './step/the_screen_loads.dart';
import './step/i_should_see_the_progress_wheel.dart';
import './step/i_should_see_the_unit_content_area.dart';
import './step/both_should_show_loading_states.dart';
import './step/the_units_have_loaded.dart';
import './step/i_select_a_different_unit.dart';
import './step/the_unit_content_should_update.dart';
import './step/the_selected_unit_should_be_highlighted.dart';
import './step/there_is_an_error_loading_units.dart';
import './step/i_should_see_an_error_message.dart';
import './step/i_should_see_a_retry_button.dart';
import './step/i_tap_the_retry_button.dart';
import './step/it_should_attempt_to_load_units_again.dart';

void main() {
  CustomTestBinding.instance;  // Initialize the custom binding
  
  group('''Home Screen''', () {
    testWidgets('''Initial load''', (tester) async {
      await iAmOnTheHomeScreen(tester);
      await theScreenLoads(tester);
      await iShouldSeeTheProgressWheel(tester);
      await iShouldSeeTheUnitContentArea(tester);
      await bothShouldShowLoadingStates(tester);
    });
    testWidgets('''Unit selection''', (tester) async {
      await iAmOnTheHomeScreen(tester);
      await theUnitsHaveLoaded(tester);
      await iSelectADifferentUnit(tester);
      await theUnitContentShouldUpdate(tester);
      await theSelectedUnitShouldBeHighlighted(tester);
    });
    testWidgets('''Error handling''', (tester) async {
      await iAmOnTheHomeScreen(tester);
      await thereIsAnErrorLoadingUnits(tester);
      await iShouldSeeAnErrorMessage(tester);
      await iShouldSeeARetryButton(tester);
      await iTapTheRetryButton(tester);
      await itShouldAttemptToLoadUnitsAgain(tester);
    });
  });
}
