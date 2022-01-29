// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'dart:async' show Future;
import 'dart:convert';

import 'package:apollo_flutter/features/plans/data/plan.dart';
import 'package:apollo_flutter/features/plans/data/plans_data.dart';

/// Class responsible for providing plans data.
class PlansProvider {
  List<Plan> _plans = [];

  /// Read plans data from json
  Future<List<Plan>> readData() async {
    /// if plans are already loaded from json
    if (_plans.isNotEmpty) {
      return _plans;
    }

    final dynamic jsonDecoded = json.decode(plansData);

    return _plans = (jsonDecoded as List)
        .map((dynamic i) => Plan.fromJson(i as Map<String, dynamic>))
        .toList();
  }
}
