// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

part of 'days_bloc.dart';

/// Status of the state
enum DaysStatus {
  /// Tells the presentation layer it needs to render a loading indicator while
  /// the initial batch of days are loaded
  initial,

  /// Tells the presentation layer it has content to render
  success,

  /// Tells the presentation layer that an error has occurred while fetching
  failure,
}

/// Days state class
class DaysState {
  /// Creates a new instance of state
  const DaysState({
    this.status = DaysStatus.initial,
    this.days = const <Day>[],
  });

  /// Copy an instance of state and update zero or more
  /// properties conveniently
  DaysState copyWith({
    DaysStatus? status,
    List<Day>? days,
  }) {
    return DaysState(
      status: status ?? this.status,
      days: days ?? this.days,
    );
  }

  /// State status
  final DaysStatus status;

  /// State plans
  final List<Day> days;

  @override
  String toString() {
    return 'DaysState { status: $status, days: ${days.length} }';
  }
}
