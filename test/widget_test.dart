// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:apollo_flutter/features/countdown_timer/business_logic/timer_bloc.dart';
import 'package:apollo_flutter/features/countdown_timer/data/ticker.dart';
import 'package:apollo_flutter/features/days/business_logic/days_bloc.dart';
import 'package:apollo_flutter/features/days/data/repository/days_repository.dart';
import 'package:apollo_flutter/features/intervals/business_logic/intervals_bloc.dart';
import 'package:apollo_flutter/features/intervals/data/repository/intervals_repository.dart';
import 'package:apollo_flutter/features/plans/business_logic/plans_bloc.dart';
import 'package:apollo_flutter/features/plans/data/repository/plans_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:apollo_flutter/main.dart';

void main() {
  PlansRepository? plansRepository;
  DaysRepository? daysRepository;
  IntervalsRepository? intervalsRepository;

  Ticker ticker;

  PlansBloc? plansBloc;
  DaysBloc? daysBloc;
  IntervalsBloc? intervalsBloc;
  TimerBloc? timerBloc;

  setUp(() async {
    plansRepository = PlansRepository();
    daysRepository = DaysRepository();
    intervalsRepository = IntervalsRepository();

    ticker = const Ticker();

    plansBloc = PlansBloc(repository: plansRepository!);
    daysBloc = DaysBloc(repository: daysRepository!);
    intervalsBloc = IntervalsBloc(repository: intervalsRepository!);
  });

  tearDown(() {
    plansBloc?.close();
    daysBloc?.close();
    intervalsBloc?.close();
    timerBloc?.close();
  });

  test('initial states', () {
    expect(plansBloc!.state, const PlansState());
    expect(daysBloc!.state, const DaysState());
    expect(intervalsBloc!.state, const IntervalsState());
  });

  // testWidgets('Counter increments smoke test', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget(const ApolloApp());
  //
  //   // Verify that our counter starts at 0.
  //   expect(find.text('0'), findsOneWidget);
  //   expect(find.text('1'), findsNothing);
  //
  //   // Tap the '+' icon and trigger a frame.
  //   await tester.tap(find.byIcon(Icons.add));
  //   await tester.pump();
  //
  //   // Verify that our counter has incremented.
  //   expect(find.text('0'), findsNothing);
  //   expect(find.text('1'), findsOneWidget);
  // });
}
