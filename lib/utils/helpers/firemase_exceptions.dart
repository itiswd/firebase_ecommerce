class TFirebaseAuthExceptions implements Exception {
  final String code;

  TFirebaseAuthExceptions(this.code);

  @override
  String toString() {
    return 'Firebase Authentication Exception: $code';
  }
}

class TFirebaseExceptions implements Exception {
  final String code;

  TFirebaseExceptions(this.code);

  @override
  String toString() {
    return 'Firebase Exception: $code';
  }
}

class TFirebaseFormatExceptions implements Exception {
  // You can add any additional properties or messages here if needed
  @override
  String toString() {
    return 'Firebase Format Exception';
  }
}

class TFirebasePlatformExceptions implements Exception {
  final String code;

  TFirebasePlatformExceptions(this.code);

  String get message {
    // Map error codes to user-friendly messages
    switch (code) {
      case 'your_error_code_1':
        return 'Error 1 occurred. Please check your input.';
      case 'your_error_code_2':
        return 'Error 2 happened. Try again later.';
      // Add more cases as needed
      default:
        return 'An unknown error occurred.';
    }
  }

  @override
  String toString() {
    return 'Firebase Platform Exception: $code';
  }
}
