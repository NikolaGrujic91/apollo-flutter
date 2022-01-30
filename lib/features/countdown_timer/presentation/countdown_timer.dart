// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/features/countdown_timer/presentation/timer_actions.dart';
import 'package:apollo_flutter/features/countdown_timer/presentation/timer_text.dart';
import 'package:apollo_flutter/util/colors.dart';
import 'package:flutter/material.dart';

/// [CountdownTimer] widget is responsible for displaying the remaining time
/// along with the proper buttons which will enable users to start, pause,
/// and reset the timer.
class CountdownTimer extends StatelessWidget {
  /// Creates new instance
  const CountdownTimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          TimerText(),
          TimerActions(),
        ],
      ),
    );
  }
}
