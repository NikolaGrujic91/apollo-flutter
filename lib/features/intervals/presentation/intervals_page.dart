// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/features/countdown_timer/presentation/countdown_timer_page.dart';
import 'package:apollo_flutter/features/days/presentation/days_page.dart';
import 'package:apollo_flutter/features/intervals/business_logic/intervals_bloc.dart';
import 'package:apollo_flutter/features/intervals/data/repository/intervals_repository.dart';
import 'package:apollo_flutter/features/intervals/presentation/intervals_list.dart';
import 'package:apollo_flutter/util/colors.dart';
import 'package:apollo_flutter/util/constants_json.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Widget representing intervals page
class IntervalsPage extends StatelessWidget {
  /// Creates new instance
  const IntervalsPage({
    Key? key,
    required this.repository,
  }) : super(key: key);

  /// Page ID
  static const String id = 'intervals_page';

  /// Intervals repository
  final IntervalsRepository repository;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _floatingActionButton(context),
      appBar: AppBar(
        leading: _backButton(context),
        title: const Text('Intervals'),
        backgroundColor: kBackgroundColor,
        foregroundColor: kTextColor,
      ),
      body: BlocProvider(
        create: (_) => IntervalsBloc(repository: repository)
          ..add(
            IntervalsFetched(
              dayId: _getDayId(context),
              planId: _getPlanId(context),
            ),
          ),
        child: const IntervalsList(),
      ),
    );
  }

  Widget _floatingActionButton(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 150,
      child: FittedBox(
        child: FloatingActionButton(
          backgroundColor: kBackgroundColor,
          foregroundColor: kTextColor,
          elevation: 6,
          shape: const CircleBorder(
            side: BorderSide(
              color: kTextColor,
            ),
          ),
          child: const Text('Start'),
          onPressed: () {
            Navigator.pushReplacementNamed(
              context,
              CountdownTimerPage.id,
              arguments: {
                kDayId: _getDayId(context),
                kPlanId: _getPlanId(context),
              },
            );
          },
        ),
      ),
    );
  }

  Widget _backButton(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pushReplacementNamed(
          context,
          DaysPage.id,
          arguments: {kPlanId: _getPlanId(context)},
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
