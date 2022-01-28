// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/features/intervals/data/data_provider/intervals_provider.dart';
import 'package:apollo_flutter/features/intervals/data/interval.dart';

/// Class responsible for acting as a wrapper around intervals provider
class IntervalsRepository {
  final _intervalsProvider = IntervalsProvider();

  /// Get intervals for day and plan
  Future<List<Interval>> getData(String dayId, String planId) async {
    var filtered = <Interval>[];

    await _intervalsProvider.readData().then(
          (List<Interval> intervals) => {
            filtered = intervals
                .where(
                  (interval) =>
                      interval.dayId == dayId && interval.planId == planId,
                )
                .toList(),
          },
        );

    return filtered;
  }
}
