import 'package:flutter/foundation.dart';
import 'package:int_to_words/int_to_words.dart';

void main() {
  final IntToWords _number = IntToWords();
  final _num = _number.convert(322323872);
  debugPrint("object: $_num");

  final _num1 = _number.convert(238273723);
  debugPrint("object: $_num1");

  final _num2 = _number.convert(283283);
  debugPrint("object: $_num2");

  final _num3 = _number.convert(28328323);
  debugPrint("object: $_num3");

  final _num4 = _number.convert(3823823);
  debugPrint("object: $_num4");

  final _num5 = _number.convert(38238282382);
  debugPrint("object: $_num5");

  final _num6 = _number.convert(2732283287323);
  debugPrint("object: $_num6");
}
