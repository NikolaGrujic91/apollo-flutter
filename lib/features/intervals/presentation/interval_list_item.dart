// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

///flutter/material.dart also has class Interval, so the prefix apollo is used
import 'package:apollo_flutter/features/intervals/data/interval.dart' as apollo;
import 'package:flutter/material.dart';

/// Widget representing days list item
class IntervalListItem extends StatelessWidget {
  /// Creates new instance
  const IntervalListItem({
    Key? key,
    required this.interval,
  }) : super(key: key);

  /// Day to be displayed
  final apollo.Interval interval;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Material(
      child: ListTile(
        leading: Text('${interval.orderNumber}', style: textTheme.caption),
        title: Text(_intervalFormatted(interval.seconds)),
        dense: true,
      ),
    );
  }

  String _intervalFormatted(int seconds) {
    final duration = Duration(seconds: seconds);
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    final twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));

    return '${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds';
  }
}
