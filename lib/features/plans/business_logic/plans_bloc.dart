// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:apollo_flutter/features/plans/data/plan.dart';
import 'package:apollo_flutter/features/plans/data/repository/plans_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'plans_event.dart';
part 'plans_state.dart';

/// Plans Bloc
class PlansBloc extends Bloc<PlansEvent, PlansState> {
  /// Creates new instance of bloc
  PlansBloc({required this.repository}) : super(const PlansState()) {
    on<PlansFetched>(_onPlansFetched);
  }

  /// Plans repository
  final PlansRepository repository;

  Future<void> _onPlansFetched(
    PlansFetched event,
    Emitter<PlansState> emit,
  ) async {
    try {
      if (state.status == PlansStatus.initial) {
        final plans = await repository.getData();

        return emit(
          state.copyWith(
            status: PlansStatus.success,
            plans: plans,
          ),
        );
      }
    } catch (_) {
      emit(state.copyWith(status: PlansStatus.failure));
    }
  }
}
