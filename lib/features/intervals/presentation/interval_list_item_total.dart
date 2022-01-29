// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

///flutter/material.dart also has class Interval, so the prefix apollo is used
import 'package:apollo_flutter/features/intervals/data/interval.dart' as apollo;
import 'package:apollo_flutter/util/formatters.dart';
import 'package:flutter/material.dart';

/// Widget representing intervals total list item
class IntervalTotalListItem extends StatelessWidget {
  /// Creates new instance
  const IntervalTotalListItem({
    Key? key,
    required this.intervals,
  }) : super(key: key);

  /// Intervals for the calculation
  final List<apollo.Interval> intervals;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Material(
      child: ListTile(
        leading: Text('Total', style: textTheme.caption),
        title: Text(intervalFormatted(_calculatedTotal())),
        dense: true,
      ),
    );
  }

  int _calculatedTotal() {
    var sum = 0;

    for (final interval in intervals) {
      sum += interval.seconds;
    }

    return sum;
  }
}
