// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/features/countdown_timer/business_logic/countdown_timer_bloc.dart';
import 'package:apollo_flutter/features/countdown_timer/presentation/countdown_timer.dart';
import 'package:apollo_flutter/features/intervals/data/repository/intervals_repository.dart';
import 'package:apollo_flutter/features/intervals/presentation/intervals_page.dart';
import 'package:apollo_flutter/util/colors.dart';
import 'package:apollo_flutter/util/constants_json.dart';
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
        create: (_) => CountdownTimerBloc()
          ..add(
            CancelTimer(),
          ),
        child: CountdownTimer(),
      ),
    );
  }

  Widget _backButton(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pushReplacementNamed(
          context,
          IntervalsPage.id,
          arguments: {kDayId: _getDayId(context), kPlanId: _getPlanId(context)},
        );
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  String _getDayId(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as Map?;

    return arguments![kDayId].toString();
  }

  String _getPlanId(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map?;

    return arguments![kPlanId].toString();
  }
}
