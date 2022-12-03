import 'package:flutter_test/flutter_test.dart';

import 'package:num_to_words/num_to_words.dart';

void main() {
  test('Converts number to words', () {
    final _numberToWords = NumbersToWord();
    expect(_numberToWords.convert(10), "Ten");
    expect(_numberToWords.convert(9999999999),
        "Nine Thousand  Nine Hundred and Ninety Nine Million  Nine Hundred and Ninety Nine Thousand Nine Hundred and Ninety Nine");
  });
}
