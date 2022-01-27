// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/features/days/data/day.dart';
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
    final textTheme = Theme.of(context).textTheme;

    return Material(
      child: ListTile(
        leading: Text('${day.orderNumber}', style: textTheme.caption),
        title: Text(day.englishName),
        dense: true,
      ),
    );
  }
}
