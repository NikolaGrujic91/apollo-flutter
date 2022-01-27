// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:apollo_flutter/features/days/data/day.dart';
import 'package:apollo_flutter/features/days/data/repository/days_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'days_event.dart';
part 'days_state.dart';

/// Plans Bloc
class DaysBloc extends Bloc<DaysEvent, DaysState> {
  /// Creates new instance of bloc
  DaysBloc({required this.repository}) : super(const DaysState()) {
    on<DaysFetched>(_onDaysFetched);
  }

  /// Plans repository
  final DaysRepository repository;

  Future<void> _onDaysFetched(
    DaysFetched event,
    Emitter<DaysState> emit,
  ) async {
    try {
      if (state.status == DaysStatus.initial) {
        final days = await repository.getDataForPlan(event.planId);

        return emit(
          state.copyWith(
            status: DaysStatus.success,
            days: days,
          ),
        );
      }
    } catch (_) {
      emit(state.copyWith(status: DaysStatus.failure));
    }
  }
}
