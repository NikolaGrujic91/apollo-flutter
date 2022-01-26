// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/features/plans/business_logic/plans_bloc.dart';
import 'package:apollo_flutter/features/plans/presentation/plan_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Widget representing plans list
class PlansList extends StatefulWidget {
  /// Creates new instance
  const PlansList({Key? key}) : super(key: key);

  @override
  State<PlansList> createState() => _PlansListState();
}

class _PlansListState extends State<PlansList> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlansBloc, PlansState>(
      builder: (context, state) {
        switch (state.status) {
          case PlansStatus.failure:
            return const Center(child: Text('failed to fetch plans'));
          case PlansStatus.success:
            if (state.plans.isEmpty) {
              return const Center(child: Text('no plans'));
            }
            return ListView.builder(
              itemCount: state.plans.length,
              itemBuilder: (context, index) {
                return PlanListItem(plan: state.plans[index]);
              },
              controller: _scrollController,
            );
          case PlansStatus.initial:
            return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
