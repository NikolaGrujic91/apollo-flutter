// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'plans_event.dart';
part 'plans_state.dart';

class PlansBloc extends Bloc<PlansEvent, PlansState> {
  PlansBloc() : super(PlansInitial()) {
    on<PlansEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
