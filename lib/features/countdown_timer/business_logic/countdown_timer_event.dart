// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

part of 'countdown_timer_bloc.dart';

/// Base events
@immutable
abstract class CountdownTimerEvent {}

/// Start timer event
class StartTimer extends CountdownTimerEvent {}

/// Pause timer event
class PauseTimer extends CountdownTimerEvent {}

/// Resume timer event
class ResumeTimer extends CountdownTimerEvent {}

/// Cancel timer event
class CancelTimer extends CountdownTimerEvent {}
