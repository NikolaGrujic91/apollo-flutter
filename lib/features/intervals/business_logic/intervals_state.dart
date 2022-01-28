// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

part of 'intervals_bloc.dart';

/// Status of the state
enum IntervalsStatus {
  /// Tells the presentation layer it needs to render a loading indicator while
  /// the initial batch of intervals are loaded
  initial,

  /// Tells the presentation layer it has content to render
  success,

  /// Tells the presentation layer that an error has occurred while fetching
  failure,
}

/// Intervals state class
class IntervalsState {
  /// Creates a new instance of state
  const IntervalsState({
    this.status = IntervalsStatus.initial,
    this.intervals = const <Interval>[],
  });

  /// Copy an instance of state and update zero or more
  /// properties conveniently
  IntervalsState copyWith({
    IntervalsStatus? status,
    List<Interval>? intervals,
  }) {
    return IntervalsState(
      status: status ?? this.status,
      intervals: intervals ?? this.intervals,
    );
  }

  /// State status
  final IntervalsStatus status;

  /// State intervals
  final List<Interval> intervals;

  @override
  String toString() {
    return 'IntervalsStatus { status: $status, intervals: ${intervals.length} }';
  }
}
