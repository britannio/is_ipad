import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class IsIpad {
  IsIpad._();

  static final IsIpad instance = IsIpad._();
  static const MethodChannel _channel = const MethodChannel('is_ipad');
  bool? _isIpad;

  Future<bool> isIpad() async =>
      _isIpad ??
      !kIsWeb &&
          Platform.isIOS &&
          await (_channel.invokeMethod<bool>('isIpad') as FutureOr<bool>);
}
