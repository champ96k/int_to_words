class IntToWords {
  final List<String> _units = [
    "Zero",
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten",
    "Eleven",
    "Twelve",
    "Thirteen",
    "Fourteen",
    "Fifteen",
    "Sixteen",
    "Seventeen",
    "Eighteen",
    "Nineteen"
  ];
  final List<String> _tens = [
    "",
    "",
    "Twenty",
    "Thirty",
    "Forty",
    "Fifty",
    "Sixty",
    "Seventy",
    "Eighty",
    "Ninety"
  ];

  String _convert(num i) {
    /// 0 -> 20
    if (i < 20) {
      return _units[i.toInt()];
    }

    /// 20 -> 100
    else if (i < 100) {
      return _tens[i ~/ 10] + ((i % 10 > 0) ? " " + _convert(i % 10) : "");
    }

    /// 100 -> 1000
    else if (i < 1000) {
      return _units[i ~/ 100] +
          " Hundred" +
          ((i % 100 > 0) ? " and " + _convert(i % 100) : "");
    }

    /// 1000 -> 1000000
    else if (i < 1000000) {
      return _convert(i / 1000) +
          " Thousand " +
          ((i % 1000 > 0) ? " " + _convert(i % 1000) : "");
    }

    /// 1000000 onwards
    else {
      return _convert(i / 1000000) +
          " Million " +
          ((i % 1000000 > 0) ? " " + _convert(i % 1000000) : "");
    }
  }

  String convert(num i) {
    final _result = _convert(i);
    return _result.replaceAll(RegExp('\\s+'), ' ');
  }
}
