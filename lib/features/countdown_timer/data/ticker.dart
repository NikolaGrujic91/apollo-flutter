// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

///https://bloclibrary.dev/#/fluttertimertutorial

/// Data class that exposes a stream of ticks which can be subscribed to
class Ticker {
  /// Creates new instance
  const Ticker();

  /// Emit remaining seconds every second
  Stream<int> tick({required int ticks}) {
    return Stream.periodic(const Duration(seconds: 1), (x) => ticks - x - 1)
        .take(ticks);
  }
}
