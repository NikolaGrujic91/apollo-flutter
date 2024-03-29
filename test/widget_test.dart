// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

/// Execute test by running command in terminal:
///  flutter run -t test/widget_test.dart

import 'package:apollo_flutter/features/days/data/repository/days_repository.dart';
import 'package:apollo_flutter/features/intervals/data/repository/intervals_repository.dart';
import 'package:apollo_flutter/features/plans/business_logic/plans_bloc.dart';
import 'package:apollo_flutter/features/plans/data/repository/plans_repository.dart';
import 'package:apollo_flutter/features/plans/presentation/plans_list.dart';
import 'package:apollo_flutter/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late PlansRepository plansRepository;
  late DaysRepository daysRepository;
  late IntervalsRepository intervalsRepository;

  /// Registers a function to be run once before all tests
  setUpAll(() async {
    plansRepository = PlansRepository();
    daysRepository = DaysRepository();
    intervalsRepository = IntervalsRepository();
  });

  testWidgets('Test plans list widgets', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Apollo',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Apollo'),
            backgroundColor: kBackgroundColor,
            foregroundColor: kTextColor,
          ),
          body: BlocProvider(
            create: (_) =>
                PlansBloc(repository: plansRepository)..add(PlansFetched()),
            child: const PlansList(),
          ),
        ),
      ),
    );

    // Verify that plans are in the list just once
    expect(find.text('0 to 2km'), findsOneWidget);
    expect(find.text('0 to 5km'), findsOneWidget);
    expect(find.text('5 to 10km'), findsOneWidget);
    expect(find.text('Weight Loss: Level 1'), findsOneWidget);
    expect(find.text('Weight Loss: Level 2'), findsOneWidget);
    expect(find.text('Weight Loss: Level 3'), findsOneWidget);

    // Tap the '+' icon and trigger a frame.
    //await tester.tap(find.byIcon(Icons.add));
    //await tester.pump();

    // Verify that our counter has incremented.
    //expect(find.text('0'), findsNothing);
    //expect(find.text('1'), findsOneWidget);
  });
}
