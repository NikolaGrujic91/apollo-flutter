// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'dart:async' show Future;
import 'dart:convert';

import 'package:apollo_flutter/features/intervals/data/interval.dart';
import 'package:apollo_flutter/features/intervals/data/intervals_data.dart';

/// Class responsible for providing intervals data.
class IntervalsProvider {
  List<Interval> _intervals = [];

  /// Read intervals data from json
  Future<List<Interval>> readData() async {
    /// if intervals are already loaded from json
    if (_intervals.isNotEmpty) {
      return _intervals;
    }
    final dynamic jsonDecoded = json.decode(intervalsData);

    return _intervals = (jsonDecoded as List)
        .map((dynamic i) => Interval.fromJson(i as Map<String, dynamic>))
        .toList();
  }
}
