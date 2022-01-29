// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/features/days/presentation/days_page.dart';
import 'package:apollo_flutter/features/intervals/business_logic/intervals_bloc.dart';
import 'package:apollo_flutter/features/intervals/data/repository/intervals_repository.dart';
import 'package:apollo_flutter/features/intervals/presentation/intervals_list.dart';
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
      appBar: AppBar(
        leading: _backButton(context),
        title: const Text('Intervals'),
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

  Widget _backButton(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pushReplacementNamed(
          context,
          DaysPage.id,
          arguments: _getPlanId(context),
        );
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  String _getDayId(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments as Map?;

    return arguments!['dayId'].toString();
  }

  String _getPlanId(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map?;

    return arguments!['planId'].toString();
  }
}
