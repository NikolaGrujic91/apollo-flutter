// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

part of 'intervals_bloc.dart';

/// Base events
@immutable
abstract class IntervalsEvent {}

/// Intervals fetch event
class IntervalsFetched extends IntervalsEvent {
  /// Creates new instance
  IntervalsFetched({
    required this.dayId,
    required this.planId,
  });

  /// Day id
  final String dayId;

  /// Plan id
  final String planId;
}
