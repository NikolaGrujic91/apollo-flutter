// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'dart:async' show Future;
import 'dart:convert';

import 'package:apollo_flutter/features/days/data/day.dart';
import 'package:apollo_flutter/features/days/data/days_data.dart';

/// Class responsible for providing days data.
class DaysProvider {
  List<Day> _days = [];

  /// Read days data from json
  Future<List<Day>> readData() async {
    /// if days are already loaded from json
    if (_days.isNotEmpty) {
      return _days;
    }
    final dynamic jsonDecoded = json.decode(daysData);

    return _days = (jsonDecoded as List)
        .map((dynamic i) => Day.fromJson(i as Map<String, dynamic>))
        .toList();
  }
}
