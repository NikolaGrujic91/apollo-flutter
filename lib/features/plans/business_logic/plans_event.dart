// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

part of 'plans_bloc.dart';

/// Base event
@immutable
abstract class PlansEvent {}

/// Plans fetch event
class PlansFetched extends PlansEvent {}
