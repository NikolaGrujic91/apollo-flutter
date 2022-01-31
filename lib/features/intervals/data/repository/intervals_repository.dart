// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/features/intervals/data/data_provider/intervals_provider.dart';
import 'package:apollo_flutter/features/intervals/data/interval.dart';

/// Class responsible for acting as a wrapper around [IntervalsProvider]
class IntervalsRepository {
  final _intervalsProvider = IntervalsProvider();

  /// List of the last filtered intervals
  List<Interval> filteredIntervals = [];

  /// Get intervals for [dayId] and [planId]
  Future<List<Interval>> getData(String dayId, String planId) async {
    await _intervalsProvider.readData().then(
          (List<Interval> intervals) => {
            filteredIntervals = intervals
                .where(
                  (interval) =>
                      interval.dayId == dayId && interval.planId == planId,
                )
                .toList(),
          },
        );

    filteredIntervals.sort(
      (intervalA, intervalB) =>
          intervalA.orderNumber.compareTo(intervalB.orderNumber),
    );

    return filteredIntervals;
  }
}
