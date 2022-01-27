// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

part of 'days_bloc.dart';

/// Base events
@immutable
abstract class DaysEvent {}

/// Days fetch event
class DaysFetched extends DaysEvent {
  /// Creates new instance
  DaysFetched({required this.planId});

  /// Project id
  final String planId;
}
