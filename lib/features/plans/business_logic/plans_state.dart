// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

part of 'plans_bloc.dart';

/// Status of the state
enum PlansStatus {
  /// Tells the presentation layer it needs to render a loading indicator while
  /// the initial batch of plans are loaded
  initial,

  /// Tells the presentation layer it has content to render
  success,

  /// Tells the presentation layer that an error has occurred while fetching
  failure,
}

/// Plans state class
class PlansState {
  /// Creates a new instance of state
  const PlansState({
    this.status = PlansStatus.initial,
    this.plans = const <Plan>[],
  });

  /// Copy an instance of state and update zero or more
  /// properties conveniently
  PlansState copyWith({
    PlansStatus? status,
    List<Plan>? plans,
  }) {
    return PlansState(
      status: status ?? this.status,
      plans: plans ?? this.plans,
    );
  }

  /// State status
  final PlansStatus status;

  /// State plans
  final List<Plan> plans;

  @override
  String toString() {
    return 'PlansState { status: $status, plans: ${plans.length} }';
  }
}
