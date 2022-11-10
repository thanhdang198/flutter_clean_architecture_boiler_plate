extension StringExtension on String {
  bool checkPasswordIsValid() {
    String value = this;
    return value.isNotEmpty == true;
  }
}
