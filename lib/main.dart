import 'package:apollo_flutter/features/plans/presentation/plans_page.dart';
import 'package:apollo_flutter/simple_bloc_observer.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(const ApolloApp()),
    blocObserver: SimpleBlocObserver(),
  );
}

class ApolloApp extends StatelessWidget {
  const ApolloApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PlansPage(),
    );
  }
}
