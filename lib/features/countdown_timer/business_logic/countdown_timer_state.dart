// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

part of 'countdown_timer_bloc.dart';

/// Status of the state
enum CountdownTimerStatus {
  /// Tells the presentation layer that timer can start
  start,

  /// Tells the presentation layer that timer is paused
  pause,

  /// Tells the presentation layer that timer can resume
  resume,

  /// Tells the presentation layer that timer is canceled
  cancel,
}

/// Countdown timer state class
class CountdownTimerState {
  /// Creates a new instance of state
  const CountdownTimerState({
    this.status = CountdownTimerStatus.cancel,
  });

  /// Copy an instance of state and update zero or more
  /// properties conveniently
  CountdownTimerState copyWith({
    CountdownTimerStatus? status,
  }) {
    return CountdownTimerState(
      status: status ?? this.status,
    );
  }

  /// State status
  final CountdownTimerStatus status;

  @override
  String toString() {
    return 'CountdownTimerStatus { status: $status }}';
  }
}
