// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/features/days/data/data_provider/days_provider.dart';
import 'package:apollo_flutter/features/days/data/day.dart';

/// Class responsible for acting as a wrapper around days provider
class DaysRepository {
  final _daysProvider = DaysProvider();

  /// Get days for plan
  Future<List<Day>> getData(String planId) async {
    var filtered = <Day>[];

    await _daysProvider.readData().then(
          (List<Day> days) => {
            filtered = days.where((day) => day.planId == planId).toList(),
          },
        );

    filtered.sort(
      (dayA, dayB) => dayA.orderNumber.compareTo(dayB.orderNumber),
    );

    return filtered;
  }
}
