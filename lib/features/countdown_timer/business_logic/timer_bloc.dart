// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

///https://bloclibrary.dev/#/fluttertimertutorial

import 'dart:async';

import 'package:apollo_flutter/features/countdown_timer/data/ticker.dart';
import 'package:apollo_flutter/features/intervals/data/repository/intervals_repository.dart';
import 'package:bloc/bloc.dart';

part 'timer_event.dart';
part 'timer_state.dart';

/// Get intervals from IntervalsBloc, communication between blocs

/// Timer bloc
class TimerBloc extends Bloc<TimerEvent, TimerState> {
  /// Creates new instance
  TimerBloc({required this.ticker, required this.repository})
      : super(TimerInitial(repository.filteredIntervals[0].seconds)) {
    currentInterval = 0;
    on<TimerStarted>(_onStarted);
    on<TimerTicked>(_onTicked);
    on<TimerPaused>(_onPaused);
    on<TimerResumed>(_onResumed);
    on<TimerReset>(_onReset);
  }

  /// Intervals repository
  final IntervalsRepository repository;

  /// Currently active interval
  late int currentInterval;

  /// Ticker
  final Ticker ticker;

  StreamSubscription<int>? _tickerSubscription;

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();

    return super.close();
  }

  void _onStarted(TimerStarted event, Emitter<TimerState> emit) {
    emit(TimerRunInProgress(event.duration));
    _tickerSubscription?.cancel();
    _tickerSubscription = ticker
        .tick(ticks: event.duration)
        .listen((duration) => add(TimerTicked(duration: duration)));
  }

  void _onTicked(TimerTicked event, Emitter<TimerState> emit) {
    /// if current interval is still in progress keep running
    if (event.duration > 0) {
      emit(TimerRunInProgress(event.duration));

      return;
    }

    currentInterval++;
    final filteredIntervals = repository.filteredIntervals;

    /// if the last interval is reached run is completed
    if (currentInterval >= filteredIntervals.length) {
      currentInterval = 0;
      emit(const TimerRunComplete());

      return;
    }

    /// The current interval is finished, start with the next interval
    emit(TimerRunInProgress(filteredIntervals[currentInterval].seconds));
    _tickerSubscription?.cancel();
    _tickerSubscription = ticker
        .tick(ticks: filteredIntervals[currentInterval].seconds)
        .listen((duration) => add(TimerTicked(duration: duration)));
  }

  void _onPaused(TimerPaused event, Emitter<TimerState> emit) {
    if (state is TimerRunInProgress) {
      _tickerSubscription?.pause();
      emit(TimerRunPause(state.duration));
    }
  }

  void _onResumed(TimerResumed resume, Emitter<TimerState> emit) {
    if (state is TimerRunPause) {
      _tickerSubscription?.resume();
      emit(TimerRunInProgress(state.duration));
    }
  }

  void _onReset(TimerReset event, Emitter<TimerState> emit) {
    _tickerSubscription?.cancel();
    emit(TimerInitial(repository.filteredIntervals[currentInterval].seconds));
  }
}
