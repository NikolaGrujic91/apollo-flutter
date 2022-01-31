// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/features/countdown_timer/business_logic/timer_bloc.dart';
import 'package:apollo_flutter/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Widget responsible for displaying remaining time
class TimerText extends StatelessWidget {
  /// Creates new instance
  const TimerText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final duration = context.select((TimerBloc bloc) => bloc.state.duration);
    final minutesStr =
        ((duration / 60) % 60).floor().toString().padLeft(2, '0');
    final secondsStr = (duration % 60).floor().toString().padLeft(2, '0');

    final totalIntervals = context
        .select((TimerBloc bloc) => bloc.repository.filteredIntervals.length);
    final currentInterval =
        context.select((TimerBloc bloc) => bloc.currentInterval) + 1;

    final type = context.select((TimerBloc bloc) =>
        bloc.repository.filteredIntervals[currentInterval].type);

    return Center(
      child: Column(
        children: [
          Text(
            '$currentInterval / $totalIntervals',
            style: const TextStyle(
              color: kTextColor,
              fontSize: 50,
              fontWeight: FontWeight.w100,
            ),
          ),
          Text(
            '$minutesStr:$secondsStr',
            style: const TextStyle(
              color: kTextColor,
              fontSize: 100,
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            type,
            style: const TextStyle(
              color: kTextColor,
              fontSize: 50,
              fontWeight: FontWeight.w100,
            ),
          ),
        ],
      ),
    );
  }
}
