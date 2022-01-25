// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/features/plans/data/data_provider/plans_provider.dart';
import 'package:apollo_flutter/features/plans/data/plan.dart';

/// Class responsible for acting as a wrapper around plan provider
class PlansRepository {
  final _plansProvider = PlansProvider();

  /// Get plans
  Future<List<Plan>> getPlans() async {
    return _plansProvider.readData();
  }
}
