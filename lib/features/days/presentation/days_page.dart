// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/features/days/business_logic/days_bloc.dart';
import 'package:apollo_flutter/features/days/data/repository/days_repository'
    '.dart';
import 'package:apollo_flutter/features/days/presentation/days_list.dart';
import 'package:apollo_flutter/features/plans/presentation/plans_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Widget representing plans page
class DaysPage extends StatelessWidget {
  /// Creates new instance
  const DaysPage({Key? key}) : super(key: key);

  /// Page ID
  static const String id = 'days_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: _backButton(context),
        title: const Text('Days'),
      ),
      body: BlocProvider(
        create: (_) => DaysBloc(repository: DaysRepository())
          ..add(DaysFetched(planId: _getPlanId(context))),
        child: const DaysList(),
      ),
    );
  }

  Widget _backButton(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pushReplacementNamed(
          context,
          PlansPage.id,
        );
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  String _getPlanId(BuildContext context) {
    return ModalRoute.of(context)!.settings.arguments.toString();
  }
}