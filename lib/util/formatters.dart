// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

/// Format seconds to human readable format
/// if [seconds] >= 3600 HH:MM:SS
/// else MM:SS
String formatDuration(int seconds) {
  final duration = Duration(seconds: seconds);
  String twoDigits(int n) => n.toString().padLeft(2, '0');
  final twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
  final twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));

  return seconds >= 3600
      ? '${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds'
      : '$twoDigitMinutes:$twoDigitSeconds';
}
