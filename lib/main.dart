// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/features/countdown_timer/presentation/countdown_timer_page.dart';
import 'package:apollo_flutter/features/days/data/repository/days_repository.dart';
import 'package:apollo_flutter/features/days/presentation/days_page.dart';
import 'package:apollo_flutter/features/intervals/data/repository/intervals_repository.dart';
import 'package:apollo_flutter/features/intervals/presentation/intervals_page.dart';
import 'package:apollo_flutter/features/plans/data/repository/plans_repository.dart';
import 'package:apollo_flutter/features/plans/presentation/plans_page.dart';
import 'package:apollo_flutter/simple_bloc_observer.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  final _plansRepository = PlansRepository();
  final _daysRepository = DaysRepository();
  final _intervalsRepository = IntervalsRepository();

  BlocOverrides.runZoned(
    () => runApp(
      ApolloApp(
        plansRepository: _plansRepository,
        daysRepository: _daysRepository,
        intervalsRepository: _intervalsRepository,
      ),
    ),
    blocObserver: SimpleBlocObserver(),
  );
}

/// This widget is the root of the application.
class ApolloApp extends StatelessWidget {
  /// Creates a new instance
  const ApolloApp({
    Key? key,
    required this.plansRepository,
    required this.daysRepository,
    required this.intervalsRepository,
  }) : super(key: key);

  /// Plans repository
  final PlansRepository plansRepository;

  /// Days repository
  final DaysRepository daysRepository;

  /// Intervals repository
  final IntervalsRepository intervalsRepository;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Apollo',
      initialRoute: PlansPage.id,
      routes: {
        PlansPage.id: (context) => PlansPage(
              repository: plansRepository,
            ),
        DaysPage.id: (context) => DaysPage(
              repository: daysRepository,
            ),
        IntervalsPage.id: (context) => IntervalsPage(
              repository: intervalsRepository,
            ),
        CountdownTimerPage.id: (context) => CountdownTimerPage(
              repository: intervalsRepository,
            ),
      },
    );
  }
}
