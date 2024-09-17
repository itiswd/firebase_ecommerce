import 'package:intl/intl.dart';

class TFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat("dd/MMMM/yyyy").format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: "en_US", symbol: "\$").format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      return "(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)}-${phoneNumber.substring(6, 10)}";
    } else if (phoneNumber.length == 11) {
      return "(${phoneNumber.substring(1, 4)}) ${phoneNumber.substring(4, 7)}-${phoneNumber.substring(7, 11)}";
    } else {
      return phoneNumber;
    }
  }

  String internationalFormatPhoneNumber(String phoneNumber) {
    // Remove all non-digit characters
    String digitOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Extract the country code
    String countryCode = digitOnly.substring(0, 2);
    digitOnly = digitOnly.substring(2);

    // Add the remaining digits to the proper formatting
    final formattedPhoneNumber = StringBuffer();
    formattedPhoneNumber.write('($countryCode) ');

    int i = 0;
    while (i < digitOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == '+1') {
        groupLength = 3;
      }
      int end = i + groupLength;
      formattedPhoneNumber.write(digitOnly.substring(i, end));
      if (end < digitOnly.length) {
        formattedPhoneNumber.write(' ');
      }
      i = end;
    }

    return formattedPhoneNumber.toString();
  }
}
