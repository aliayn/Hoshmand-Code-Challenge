// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/i_am_on_the_home_screen.dart';
import './step/the_screen_loads.dart';
import './step/i_should_see_the_progress_wheel.dart';
import './step/i_should_see_the_unit_content_area.dart';
import './step/both_should_show_loading_states.dart';

void main() {
  group('''Home Screen''', () {
    testWidgets('''Initial load''', (tester) async {
      await iAmOnTheHomeScreen(tester);
      await theScreenLoads(tester);
      await iShouldSeeTheProgressWheel(tester);
      await iShouldSeeTheUnitContentArea(tester);
      await bothShouldShowLoadingStates(tester);
    });
  });
}
