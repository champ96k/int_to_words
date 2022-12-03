import 'package:flutter_test/flutter_test.dart';

import 'package:number_to_words/number_to_words.dart';

void main() {
  test('adds one to input values', () {

    final _numberToWords = NumberToWords();
    expect(_numberToWords.convert(10), "Ten");
    expect(_numberToWords.convert(9999999999), "Nine Thousand  Nine Hundred and Ninety Nine Million  Nine Hundred and Ninety Nine Thousand Nine Hundred and Ninety Nine");

  });
}
