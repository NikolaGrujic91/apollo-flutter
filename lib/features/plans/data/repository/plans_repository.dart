// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/features/plans/data/data_provider/plans_provider.dart';
import 'package:apollo_flutter/features/plans/data/plan.dart';

/// Class responsible for acting as a wrapper around plan provider
class PlansRepository {
  final _plansProvider = PlansProvider();

  /// Get plans data
  Future<List<Plan>> getData() async {
    var filtered = <Plan>[];

    await _plansProvider.readData().then(
          (List<Plan> plans) => {filtered = plans},
        );

    filtered.sort(
      (planA, planB) => planA.orderNumber.compareTo(planB.orderNumber),
    );

    return filtered;
  }
}
