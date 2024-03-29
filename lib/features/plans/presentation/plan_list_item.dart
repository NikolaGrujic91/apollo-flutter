// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/features/days/presentation/days_page.dart';
import 'package:apollo_flutter/features/plans/data/plan.dart';
import 'package:apollo_flutter/util/colors.dart';
import 'package:apollo_flutter/util/constants_json.dart';
import 'package:apollo_flutter/util/text_style.dart';
import 'package:flutter/material.dart';

/// Widget representing plans list item
class PlanListItem extends StatelessWidget {
  /// Creates new instance
  const PlanListItem({
    Key? key,
    required this.plan,
  }) : super(key: key);

  /// Plan to be displayed
  final Plan plan;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        leading: Text(
          '${plan.orderNumber}',
          style: leadingStyle,
        ),
        title: Text(
          plan.englishName,
          style: titleStyle,
        ),
        tileColor: kBackgroundColor,
        textColor: kTextColor,
        onTap: () {
          Navigator.pushReplacementNamed(
            context,
            DaysPage.id,
            arguments: {kPlanId: plan.id, kPlanName: plan.englishName},
          );
        },
      ),
    );
  }
}
