// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/features/countdown_timer/business_logic/timer_bloc.dart';
import 'package:apollo_flutter/util/colors.dart';
import 'package:apollo_flutter/util/formatters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Widget responsible for displaying remaining time
class TimerText extends StatelessWidget {
  /// Creates new instance
  const TimerText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final duration = context.select((TimerBloc bloc) => bloc.state.duration);
    final fontSize = duration >= 3600 ? 85.0 : 130.0;

    final totalIntervals = context
        .select((TimerBloc bloc) => bloc.repository.filteredIntervals.length);
    final currentInterval =
        context.select((TimerBloc bloc) => bloc.currentInterval);

    final type = context.select(
      (TimerBloc bloc) =>
          bloc.repository.filteredIntervals[currentInterval].type,
    );

    return Center(
      child: Column(
        children: [
          Text(
            '${currentInterval + 1} / $totalIntervals',
            style: const TextStyle(
              color: kTextColor,
              fontSize: 70,
              fontWeight: FontWeight.w100,
            ),
          ),
          Text(
            formatDuration(duration),
            style: TextStyle(
              color: kTextColor,
              fontSize: fontSize,
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            type.toUpperCase(),
            style: const TextStyle(
              color: kTextColor,
              fontSize: 70,
              fontWeight: FontWeight.w100,
            ),
          ),
        ],
      ),
    );
  }
}
