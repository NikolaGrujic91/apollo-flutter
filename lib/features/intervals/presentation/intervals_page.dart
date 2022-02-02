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
import 'package:apollo_flutter/util/navigation_arguments.dart';
import 'package:apollo_flutter/util/text_style.dart';
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
        title: Text(getDayName(context)),
        backgroundColor: kBackgroundColor,
        foregroundColor: kTextColor,
      ),
      body: BlocProvider(
        create: (_) => IntervalsBloc(repository: repository)
          ..add(
            IntervalsFetched(
              dayId: getDayId(context),
              planId: getPlanId(context),
            ),
          ),
        child: const IntervalsList(),
      ),
    );
  }

  Widget _floatingActionButton(BuildContext context) {
    const shape = CircleBorder(
      side: BorderSide(
        color: kTextColor,
        width: 0.5,
      ),
    );

    return SizedBox(
      height: 150,
      width: 150,
      child: FloatingActionButton(
        heroTag: 'intervalsFAB',
        backgroundColor: kBackgroundColor,
        foregroundColor: kTextColor,
        elevation: 6,
        shape: shape,
        child: const Text(
          'Start',
          style: fabStyle,
        ),
        onPressed: () {
          Navigator.pushReplacementNamed(
            context,
            CountdownTimerPage.id,
            arguments: {
              kDayId: getDayId(context),
              kPlanId: getPlanId(context),
              kDayName: getDayName(context),
              kPlanName: getPlanName(context),
            },
          );
        },
      ),
    );
  }

  Widget _backButton(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pushReplacementNamed(
          context,
          DaysPage.id,
          arguments: {
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
