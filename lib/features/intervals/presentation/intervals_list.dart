// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/features/intervals/business_logic/intervals_bloc.dart';
import 'package:apollo_flutter/features/intervals/presentation/interval_list_item.dart';
import 'package:apollo_flutter/features/intervals/presentation/interval_list_item_total.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Widget representing intervals list
class IntervalsList extends StatefulWidget {
  /// Creates new instance
  const IntervalsList({Key? key}) : super(key: key);

  @override
  State<IntervalsList> createState() => _IntervalsListState();
}

class _IntervalsListState extends State<IntervalsList> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IntervalsBloc, IntervalsState>(
      builder: (context, state) {
        switch (state.status) {
          case IntervalsStatus.failure:
            return const Center(child: Text('failed to fetch intervals'));
          case IntervalsStatus.success:
            if (state.intervals.isEmpty) {
              return const Center(child: Text('no intervals'));
            }
            return ListView.builder(
              itemCount: state.intervals.length + 1,
              itemBuilder: (context, index) {
                return index == state.intervals.length
                    ? IntervalTotalListItem(intervals: state.intervals)
                    : IntervalListItem(interval: state.intervals[index]);
              },
              controller: _scrollController,
            );
          case IntervalsStatus.initial:
            return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
