// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/features/countdown_timer/business_logic/timer_bloc.dart';
import 'package:apollo_flutter/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// The [TimerActions] widget is just another StatelessWidget which uses a
/// BlocBuilder to rebuild the UI every time we get a new [TimerState].
/// [TimerActions] uses context.read<TimerBloc>() to access the [TimerBloc]
/// instance and returns different [FloatingActionButtons] based on the
/// current state of the [TimerBloc]. Each of the [FloatingActionButtons] adds
/// an event in its [onPressed] callback to notify the [TimerBloc].
class TimerActions extends StatelessWidget {
  /// Creates new instance
  const TimerActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      buildWhen: (prev, state) => prev.runtimeType != state.runtimeType,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (state is TimerInitial) ...[
                _button(
                  context,
                  state,
                  'Cancel',
                  () => context.read<TimerBloc>().add(const TimerReset()),
                ),
                _button(
                  context,
                  state,
                  'Start',
                  () => context
                      .read<TimerBloc>()
                      .add(TimerStarted(duration: state.duration)),
                ),
              ],
              if (state is TimerRunInProgress) ...[
                _button(
                  context,
                  state,
                  'Cancel',
                  () => context.read<TimerBloc>().add(const TimerReset()),
                ),
                _button(
                  context,
                  state,
                  'Pause',
                  () => context.read<TimerBloc>().add(const TimerPaused()),
                ),
              ],
              if (state is TimerRunPause) ...[
                _button(
                  context,
                  state,
                  'Cancel',
                  () => context.read<TimerBloc>().add(const TimerReset()),
                ),
                _button(
                  context,
                  state,
                  'Resume',
                  () => context.read<TimerBloc>().add(const TimerResumed()),
                ),
              ],
              if (state is TimerRunComplete) ...[
                _button(
                  context,
                  state,
                  'Cancel',
                  () => context.read<TimerBloc>().add(const TimerReset()),
                ),
                _button(
                  context,
                  state,
                  'Start',
                  () => context
                      .read<TimerBloc>()
                      .add(TimerStarted(duration: state.duration)),
                ),
              ],
            ],
          ),
        );
      },
    );
  }

  Widget _button(
    BuildContext context,
    TimerState state,
    String text,
    VoidCallback? onPressed,
  ) {
    const shape = CircleBorder(
      side: BorderSide(
        color: kTextColor,
        width: 0.5,
      ),
    );

    return SizedBox(
      height: 150,
      width: 150,
      child: FloatingActionButton(
        heroTag: '${text}FAB',
        shape: shape,
        backgroundColor: kBackgroundColor,
        foregroundColor: kTextColor,
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
