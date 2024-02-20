class Validators {
// Empty Text Validation

  static String? validateEmptyText(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required';
    }
    return null;
  }

  // Email Validator
  static String? validateEMail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    // Email Regex
    final emailRegex = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Invalid Email Address';
    }

    return null;
  }
}
