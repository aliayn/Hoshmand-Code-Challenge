// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_unit_content_is_in_loading_state.dart';
import './step/the_content_is_rendered.dart';
import './step/i_should_see_shimmer_loading_effects.dart';
import './step/i_should_see5_shimmer_items.dart';
import './step/i_have_a_unit_with_learning_content.dart';
import './step/i_should_see_the_units_learning_content_items.dart';
import './step/each_item_should_have_an_icon.dart';
import './step/each_item_should_have_a_description.dart';
import './step/i_have_a_unit_with_no_learning_content.dart';
import './step/i_should_see_the_empty_state_message.dart';
import './step/there_is_an_error_loading_the_unit_content.dart';
import './step/i_should_see_the_error_message.dart';
import './step/i_should_see_a_retry_button.dart';

void main() {
  group('''Unit Content''', () {
    testWidgets('''Display loading state''', (tester) async {
      await theUnitContentIsInLoadingState(tester);
      await theContentIsRendered(tester);
      await iShouldSeeShimmerLoadingEffects(tester);
      await iShouldSee5ShimmerItems(tester);
    });
    testWidgets('''Display unit content''', (tester) async {
      await iHaveAUnitWithLearningContent(tester);
      await theContentIsRendered(tester);
      await iShouldSeeTheUnitsLearningContentItems(tester);
      await eachItemShouldHaveAnIcon(tester);
      await eachItemShouldHaveADescription(tester);
    });
    testWidgets('''Display empty state''', (tester) async {
      await iHaveAUnitWithNoLearningContent(tester);
      await theContentIsRendered(tester);
      await iShouldSeeTheEmptyStateMessage(tester);
    });
    testWidgets('''Display error state''', (tester) async {
      await thereIsAnErrorLoadingTheUnitContent(tester);
      await theContentIsRendered(tester);
      await iShouldSeeTheErrorMessage(tester);
      await iShouldSeeARetryButton(tester);
    });
  });
}
