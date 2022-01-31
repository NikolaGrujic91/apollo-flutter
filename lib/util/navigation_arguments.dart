// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/util/constants_json.dart';
import 'package:flutter/material.dart';

/// Get dayID from arguments sent when navigating
String getDayId(BuildContext context) {
  final arguments = ModalRoute.of(context)?.settings.arguments as Map?;

  return arguments![kDayId].toString();
}

/// Get planID from arguments sent when navigating
String getPlanId(BuildContext context) {
  final arguments = ModalRoute.of(context)!.settings.arguments as Map?;

  return arguments![kPlanId].toString();
}
