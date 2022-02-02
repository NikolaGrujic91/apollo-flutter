// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/features/days/data/day.dart';
import 'package:apollo_flutter/features/intervals/presentation/intervals_page.dart';
import 'package:apollo_flutter/util/colors.dart';
import 'package:apollo_flutter/util/constants_json.dart';
import 'package:apollo_flutter/util/navigation_arguments.dart';
import 'package:apollo_flutter/util/text_style.dart';
import 'package:flutter/material.dart';

/// Widget representing days list item
class DayListItem extends StatelessWidget {
  /// Creates new instance
  const DayListItem({
    Key? key,
    required this.day,
  }) : super(key: key);

  /// Day to be displayed
  final Day day;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        leading: Text(
          '${day.orderNumber}',
          style: leadingStyle,
        ),
        title: Text(
          day.englishName,
          style: titleStyle,
        ),
        tileColor: kBackgroundColor,
        textColor: kTextColor,
        onTap: () {
          Navigator.pushReplacementNamed(
            context,
            IntervalsPage.id,
            arguments: {
              kDayId: day.id,
              kPlanId: day.planId,
              kDayName: day.englishName,
              kPlanName: getPlanName(context),
            },
          );
        },
      ),
    );
  }
}
