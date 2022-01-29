// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/util/constants_json.dart';

/// Plan data class
class Plan {
  /// Creates a new instance from JSON
  Plan.fromJson(Map<String, dynamic> json)
      // ignore: avoid_dynamic_calls
      : id = json[kId][kOid].toString(),
        englishName = json[kEnglishName].toString(),
        italianName = json[kItalianName].toString(),
        frenchName = json[kFrenchName].toString(),
        serbianName = json[kSerbianName].toString(),
        dutchName = json[kDutchName].toString(),
        orderNumber = int.parse(json[kOrderNumber].toString());

  /// Plan id
  String id;

  /// Plan name on english
  String englishName;

  /// Plan name on italian
  String italianName;

  /// Plan name on french
  String frenchName;

  /// Plan name on serbian
  String serbianName;

  /// Plan name on dutch
  String dutchName;

  /// Plan order number
  int orderNumber;
}
