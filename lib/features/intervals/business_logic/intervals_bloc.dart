// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:apollo_flutter/features/intervals/data/interval.dart';
import 'package:apollo_flutter/features/intervals/data/repository/intervals_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'intervals_event.dart';
part 'intervals_state.dart';

/// Intervals Bloc
class IntervalsBloc extends Bloc<IntervalsEvent, IntervalsState> {
  /// Creates new instance of bloc
  IntervalsBloc({required this.repository}) : super(const IntervalsState()) {
    on<IntervalsFetched>(_onIntervalsFetched);
  }

  /// Intervals repository
  final IntervalsRepository repository;

  Future<void> _onIntervalsFetched(
    IntervalsFetched event,
    Emitter<IntervalsState> emit,
  ) async {
    try {
      if (state.status == IntervalsStatus.initial) {
        final intervals = await repository.getData(event.dayId, event.planId);

        return emit(
          state.copyWith(
            status: IntervalsStatus.success,
            intervals: intervals,
          ),
        );
      }
    } catch (_) {
      emit(state.copyWith(status: IntervalsStatus.failure));
    }
  }
}
