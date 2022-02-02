// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/features/countdown_timer/business_logic/timer_bloc.dart';
import 'package:apollo_flutter/features/countdown_timer/data/ticker.dart';
import 'package:apollo_flutter/features/countdown_timer/presentation/countdown_timer.dart';
import 'package:apollo_flutter/features/intervals/data/repository/intervals_repository.dart';
import 'package:apollo_flutter/features/intervals/presentation/intervals_page.dart';
import 'package:apollo_flutter/util/colors.dart';
import 'package:apollo_flutter/util/constants_json.dart';
import 'package:apollo_flutter/util/navigation_arguments.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Widget representing intervals page
class CountdownTimerPage extends StatelessWidget {
  /// Creates new instance
  const CountdownTimerPage({
    Key? key,
    required this.repository,
  }) : super(key: key);

  /// Page ID
  static const String id = 'countdown_timer_page';

  /// Intervals repository
  final IntervalsRepository repository;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: _backButton(context),
        title: const Text('Timer'),
        backgroundColor: kBackgroundColor,
        foregroundColor: kTextColor,
      ),
      body: BlocProvider(
        create: (_) => TimerBloc(
          ticker: const Ticker(),
          repository: repository,
        ),
        child: const CountdownTimer(),
      ),
    );
  }

  Widget _backButton(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pushReplacementNamed(
          context,
          IntervalsPage.id,
          arguments: {
            kDayId: getDayId(context),
            kPlanId: getPlanId(context),
            kDayName: getDayName(context),
            kPlanName: getPlanName(context),
          },
        );
      },
      icon: const Icon(Icons.arrow_back),
    );
  }
}
