// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

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
  BlocOverrides.runZoned(
    () => runApp(ApolloApp()),
    blocObserver: SimpleBlocObserver(),
  );
}

/// This widget is the root of the application.
class ApolloApp extends StatelessWidget {
  /// Creates a new instance
  ApolloApp({Key? key}) : super(key: key);

  final _plansRepository = PlansRepository();
  final _daysRepository = DaysRepository();
  final _intervalsRepository = IntervalsRepository();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: PlansPage.id,
      routes: {
        PlansPage.id: (context) => PlansPage(
              repository: _plansRepository,
            ),
        DaysPage.id: (context) => DaysPage(
              repository: _daysRepository,
            ),
        IntervalsPage.id: (context) => IntervalsPage(
              repository: _intervalsRepository,
            ),
      },
    );
  }
}
