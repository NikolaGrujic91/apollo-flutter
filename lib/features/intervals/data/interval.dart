// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

/// Interval data class
class Interval {
  /// Creates a new instance from JSON
  Interval.fromJson(Map<String, dynamic> json)
      // ignore: avoid_dynamic_calls
      : id = json['_id']['oid'].toString(),
        dayId = json['dayID'].toString(),
        planId = json['planID'].toString(),
        type = json['type'].toString(),
        seconds = int.parse(json['seconds'].toString()),
        orderNumber = int.parse(json['orderNumber'].toString());

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
