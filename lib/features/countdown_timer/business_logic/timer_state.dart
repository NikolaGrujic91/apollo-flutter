// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

///https://bloclibrary.dev/#/fluttertimertutorial

part of 'timer_bloc.dart';

/// State base class
abstract class TimerState {
  /// Creates new instance
  const TimerState(this.duration);

  /// Timer duration in seconds
  final int duration;

  @override
  List<Object> get props => [duration];
}

/// if the state is [TimerInitial] the user will be able to start the timer.
class TimerInitial extends TimerState {
  /// Creates new instance
  const TimerInitial(int duration) : super(duration);

  @override
  String toString() => 'TimerInitial { duration: $duration }';
}

/// if the state is [TimerRunPause] the user
/// will be able to resume the timer and reset the timer.
class TimerRunPause extends TimerState {
  /// Creates new instance
  const TimerRunPause(int duration) : super(duration);

  @override
  String toString() => 'TimerRunPause { duration: $duration }';
}

/// if the state is [TimerRunInProgress] the user will be able to pause and
/// reset the timer as well as see the remaining duration.
class TimerRunInProgress extends TimerState {
  /// Creates new instance
  const TimerRunInProgress(int duration) : super(duration);

  @override
  String toString() => 'TimerRunInProgress { duration: $duration }';
}

/// if the state is [TimerRunComplete] the user will be able to reset the timer.
class TimerRunComplete extends TimerState {
  /// Creates new instance
  const TimerRunComplete() : super(0);
}
