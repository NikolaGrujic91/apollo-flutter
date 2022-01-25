// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'dart:async' show Future;
import 'dart:convert';

import 'package:apollo_flutter/features/plans/data/plan.dart';
import 'package:apollo_flutter/features/plans/data/plans_data.dart';

/// Class responsible for providing plans data.
class PlansProvider {
  /// Read plans data from json
  Future<List<Plan>> readData() async {
    final dynamic jsonDecoded = json.decode(plansData);

    final plans = (jsonDecoded as List)
        .map((dynamic i) => Plan.fromJson(i as Map<String, dynamic>))
        .toList();

    return plans;
  }
}
