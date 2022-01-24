// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

class Plan {
  /// Creates a new instance from JSON
  Plan.fromJson(Map<String, dynamic> json) : name = json['name'].toString();

  String name;
}
