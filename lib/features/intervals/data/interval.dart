// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/util/constants_json.dart';

/// Interval data class
class Interval {
  /// Creates a new instance from JSON
  Interval.fromJson(Map<String, dynamic> json)
      // ignore: avoid_dynamic_calls
      : id = json[kId][kOid].toString(),
        dayId = json[kDayId].toString(),
        planId = json[kPlanId].toString(),
        type = json[kType].toString(),
        seconds = int.parse(json[kSeconds].toString()),
        orderNumber = int.parse(json[kOrderNumber].toString());

  /// Interval id
  String id;

  /// Day id
  String dayId;

  /// Plan id
  String planId;

  /// Interval type
  String type;

  /// Interval seconds
  int seconds;

  /// Interval order number
  int orderNumber;
}
