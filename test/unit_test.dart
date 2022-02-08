// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:apollo_flutter/features/days/data/repository/days_repository.dart';
import 'package:apollo_flutter/features/intervals/data/repository/intervals_repository.dart';
import 'package:apollo_flutter/features/plans/data/repository/plans_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late PlansRepository plansRepository;
  late DaysRepository daysRepository;
  late IntervalsRepository intervalsRepository;

  const _0to2km = 1;
  const _0to5km = 2;
  const _5to10km = 3;
  const _weightLossLevel1 = 4;
  const _weightLossLevel2 = 5;
  const _weightLossLevel3 = 6;

  /// Registers a function to be run once before all tests
  setUpAll(() async {
    plansRepository = PlansRepository();
    daysRepository = DaysRepository();
    intervalsRepository = IntervalsRepository();
  });

  /// Registers a function to be run once after all tests
  tearDownAll(() {
    plansRepository.filteredPlans.clear();
    daysRepository.filteredDays.clear();
    intervalsRepository.filteredIntervals.clear();
  });

  test('get plans data', () async {
    final plans = await plansRepository.getData();

    expect(6, plans.length);
  });

  test('get days data', () async {
    final plans = await plansRepository.getData();

    for (final plan in plans) {
      final days = await daysRepository.getData(plan.id);

      if (plan.orderNumber == _0to2km) {
        expect(16, days.length);
      }
      if (plan.orderNumber == _0to5km) {
        expect(24, days.length);
      }
      if (plan.orderNumber == _5to10km) {
        expect(18, days.length);
      }
      if (plan.orderNumber == _weightLossLevel1) {
        expect(18, days.length);
      }
      if (plan.orderNumber == _weightLossLevel2) {
        expect(18, days.length);
      }
      if (plan.orderNumber == _weightLossLevel3) {
        expect(18, days.length);
      }
    }
  });
}
