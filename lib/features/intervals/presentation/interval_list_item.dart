// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

///flutter/material.dart also has class Interval, so the prefix apollo is used
import 'package:apollo_flutter/features/intervals/data/interval.dart' as apollo;
import 'package:apollo_flutter/util/colors.dart';
import 'package:apollo_flutter/util/formatters.dart';
import 'package:apollo_flutter/util/text_style.dart';
import 'package:flutter/material.dart';

/// Widget representing days list item
class IntervalListItem extends StatelessWidget {
  /// Creates new instance
  const IntervalListItem({
    Key? key,
    required this.interval,
  }) : super(key: key);

  /// Interval to be displayed
  final apollo.Interval interval;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        leading: Text(
          '${interval.orderNumber}',
          style: leadingStyle,
        ),
        title: Text(
          formatDuration(interval.seconds),
          style: titleStyle,
        ),
        trailing: Text(
          interval.type,
          style: leadingStyle,
        ),
        tileColor: kBackgroundColor,
        textColor: kTextColor,
      ),
    );
  }
}
