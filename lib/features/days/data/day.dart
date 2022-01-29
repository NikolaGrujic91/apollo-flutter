// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/util/constants_json.dart';

/// Day data class
class Day {
  /// Creates a new instance from JSON
  Day.fromJson(Map<String, dynamic> json)
      // ignore: avoid_dynamic_calls
      : id = json[kId][kOid].toString(),
        planId = json[kPlanId].toString(),
        englishName = json[kEnglishName].toString(),
        italianName = json[kItalianName].toString(),
        frenchName = json[kFrenchName].toString(),
        serbianName = json[kSerbianName].toString(),
        dutchName = json[kDutchName].toString(),
        orderNumber = int.parse(json[kOrderNumber].toString());

  /// Day id
  String id;

  /// Plan id
  String planId;

  /// Day name on english
  String englishName;

  /// Day name on italian
  String italianName;

  /// Day name on french
  String frenchName;

  /// Day name on serbian
  String serbianName;

  /// Day name on dutch
  String dutchName;

  /// Day order number
  int orderNumber;
}
