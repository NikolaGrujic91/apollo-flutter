// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/util/constants_json.dart';
import 'package:flutter/material.dart';

/// Get dayID from navigation arguments
String getDayId(BuildContext context) {
  final arguments = ModalRoute.of(context)?.settings.arguments as Map?;

  return arguments![kDayId].toString();
}

/// Get planID from navigation arguments
String getPlanId(BuildContext context) {
  final arguments = ModalRoute.of(context)!.settings.arguments as Map?;

  return arguments![kPlanId].toString();
}

/// Get plan name from navigation arguments
String getPlanName(BuildContext context) {
  final arguments = ModalRoute.of(context)!.settings.arguments as Map?;

  return arguments![kPlanName].toString();
}

/// Get day name from navigation arguments
String getDayName(BuildContext context) {
  final arguments = ModalRoute.of(context)!.settings.arguments as Map?;

  return arguments![kDayName].toString();
}
