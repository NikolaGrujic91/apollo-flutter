// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'package:apollo_flutter/util/colors.dart';
import 'package:flutter/material.dart';

class CountdownTimer extends StatefulWidget {
  const CountdownTimer({Key? key}) : super(key: key);

  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _circularProgressIndicator(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _leftButton(),
              _rightButton(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _circularProgressIndicator() {
    return SizedBox(
      height: 300,
      width: 300,
      child: Stack(
        children: [
          Center(
            child: SizedBox(
              height: 300,
              width: 300,
              child: CircularProgressIndicator(
                value: controller.value,
                color: kTextColor,
                strokeWidth: 10,
              ),
            ),
          ),
          Center(
            child: Text('03:00'),
          ),
        ],
      ),
    );
  }

  Widget _leftButton() {
    return ElevatedButton(
      child: const Text(
        'Cancel',
        style: TextStyle(
          fontSize: 15,
          color: kTextColor,
        ),
      ),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: kBackgroundColor,
        shadowColor: kTextColor,
        fixedSize: const Size(120, 120),
        shape: const CircleBorder(
          side: BorderSide(color: kTextColor),
        ),
      ),
    );
  }

  Widget _rightButton() {
    return ElevatedButton(
      child: const Text(
        'Start',
        style: TextStyle(
          fontSize: 15,
          color: kTextColor,
        ),
      ),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: kBackgroundColor,
        shadowColor: kTextColor,
        fixedSize: const Size(120, 120),
        shape: const CircleBorder(
          side: BorderSide(color: kTextColor),
        ),
      ),
    );
  }
}
