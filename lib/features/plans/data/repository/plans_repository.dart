// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/features/plans/data/data_provider/plans_provider.dart';
import 'package:apollo_flutter/features/plans/data/plan.dart';

/// Class responsible for acting as a wrapper around [PlansProvider]
class PlansRepository {
  final _plansProvider = PlansProvider();

  /// List of the last filtered plans
  List<Plan> filteredPlans = [];

  /// Get plans data
  Future<List<Plan>> getData() async {
    await _plansProvider.readData().then(
          (List<Plan> plans) => {filteredPlans = plans},
        );

    filteredPlans.sort(
      (planA, planB) => planA.orderNumber.compareTo(planB.orderNumber),
    );

    return filteredPlans;
  }
}
