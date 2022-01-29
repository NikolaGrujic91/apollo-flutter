// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/features/days/business_logic/days_bloc.dart';
import 'package:apollo_flutter/features/days/presentation/day_list_item.dart';
import 'package:apollo_flutter/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Widget representing days list
class DaysList extends StatefulWidget {
  /// Creates new instance
  const DaysList({Key? key}) : super(key: key);

  @override
  State<DaysList> createState() => _DaysListState();
}

class _DaysListState extends State<DaysList> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      child: BlocBuilder<DaysBloc, DaysState>(
        builder: (context, state) {
          switch (state.status) {
            case DaysStatus.failure:
              return const Center(child: Text('failed to fetch days'));
            case DaysStatus.success:
              if (state.days.isEmpty) {
                return const Center(child: Text('no days'));
              }
              return ListView.builder(
                itemCount: state.days.length,
                itemBuilder: (context, index) {
                  return DayListItem(day: state.days[index]);
                },
                controller: _scrollController,
              );
            case DaysStatus.initial:
              return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
