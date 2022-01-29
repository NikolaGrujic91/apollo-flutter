// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'countdown_timer_event.dart';
part 'countdown_timer_state.dart';

/// Countdown Timer Bloc
class CountdownTimerBloc
    extends Bloc<CountdownTimerEvent, CountdownTimerState> {
  /// Creates new instance of bloc
  CountdownTimerBloc() : super(const CountdownTimerState()) {
    on<StartTimer>(_onStartTimer);
    on<PauseTimer>(_onPauseTimer);
    on<ResumeTimer>(_onResumeTimer);
    on<CancelTimer>(_onCancelTimer);
  }

  Future<void> _onStartTimer(
    StartTimer event,
    Emitter<CountdownTimerState> emit,
  ) async {
    return emit(
      state.copyWith(
        status: CountdownTimerStatus.start,
      ),
    );
  }

  Future<void> _onPauseTimer(
    PauseTimer event,
    Emitter<CountdownTimerState> emit,
  ) async {
    return emit(
      state.copyWith(
        status: CountdownTimerStatus.pause,
      ),
    );
  }

  Future<void> _onResumeTimer(
    ResumeTimer event,
    Emitter<CountdownTimerState> emit,
  ) async {
    return emit(
      state.copyWith(
        status: CountdownTimerStatus.resume,
      ),
    );
  }

  Future<void> _onCancelTimer(
    CancelTimer event,
    Emitter<CountdownTimerState> emit,
  ) async {
    return emit(
      state.copyWith(
        status: CountdownTimerStatus.cancel,
      ),
    );
  }
}
