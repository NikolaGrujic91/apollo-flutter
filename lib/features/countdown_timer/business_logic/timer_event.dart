// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

///https://bloclibrary.dev/#/fluttertimertutorial

part of 'timer_bloc.dart';

/// Base timer event
abstract class TimerEvent {
  /// Creates new instance
  const TimerEvent();
}

/// [TimerStarted] informs the [TimerBloc] that the timer should be started.
class TimerStarted extends TimerEvent {
  /// Creates new instance
  const TimerStarted({required this.duration});

  /// Timer duration in seconds
  final int duration;
}

/// [TimerPaused] informs the [TimerBloc] that the timer should be paused.
class TimerPaused extends TimerEvent {
  /// Creates new instance
  const TimerPaused();
}

/// [TimerResumed] informs the [TimerBloc] that the timer should be resumed
class TimerResumed extends TimerEvent {
  /// Creates new instance
  const TimerResumed();
}

/// [TimerReset] informs the [TimerBloc] that the timer should be reset to the
/// original state.
class TimerReset extends TimerEvent {
  /// Creates new instance
  const TimerReset();
}

/// [TimerTicked] informs the [TimerBloc] that a tick has occurred and that it
/// needs to update its state accordingly.
class TimerTicked extends TimerEvent {
  /// Creates new instance
  const TimerTicked({required this.duration});

  /// Timer duration in seconds
  final int duration;
}
