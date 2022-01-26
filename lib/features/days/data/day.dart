// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

/// Day data class
class Day {
  /// Creates a new instance from JSON
  Day.fromJson(Map<String, dynamic> json)
      // ignore: avoid_dynamic_calls
      : id = json['_id']['oid'].toString(),
        planId = json['planID'].toString(),
        englishName = json['englishName'].toString(),
        italianName = json['italianName'].toString(),
        frenchName = json['frenchName'].toString(),
        serbianName = json['serbianName'].toString(),
        dutchName = json['dutchName'].toString(),
        orderNumber = int.parse(json['orderNumber'].toString());

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
