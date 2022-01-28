// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/features/plans/business_logic/plans_bloc.dart';
import 'package:apollo_flutter/features/plans/data/repository/plans_repository.dart';
import 'package:apollo_flutter/features/plans/presentation/plans_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Widget representing plans page
class PlansPage extends StatelessWidget {
  /// Creates new instance
  const PlansPage({Key? key}) : super(key: key);

  /// Page ID
  static const String id = 'plans_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Plans')),
      body: BlocProvider(
        create: (_) =>
            PlansBloc(repository: PlansRepository())..add(PlansFetched()),
        child: const PlansList(),
      ),
    );
  }
}