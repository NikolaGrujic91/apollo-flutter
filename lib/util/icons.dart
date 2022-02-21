// Copyright 2022 Nikola Grujic. All rights reserved.
// Use of this source code is governed by a GNU-style license that can be
// found in the LICENSE file.

import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final _isApple = Platform.isIOS || Platform.isMacOS;

/// Back Icon
IconData kBackIcon = _isApple ? CupertinoIcons.back : Icons.arrow_back;
