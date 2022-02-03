// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/features/days/data/data_provider/days_provider.dart';
import 'package:apollo_flutter/features/days/data/day.dart';

/// Class responsible for acting as a wrapper around [DaysProvider]
class DaysRepository {
  final _daysProvider = DaysProvider();

  /// List of the last filtered days
  List<Day> filteredDays = [];

  /// Get days for [planId]
  Future<List<Day>> getData(String planId) async {
    await _daysProvider.readData().then(
          (List<Day> days) => {
            filteredDays = days.where((day) => day.planId == planId).toList(),
          },
        );

    filteredDays.sort(
      (dayA, dayB) => dayA.orderNumber.compareTo(dayB.orderNumber),
    );

    return filteredDays;
  }
}
