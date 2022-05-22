extension StringExtension on String {
  
  bool get isFormEmpty => this == null || this == "" || this.isEmpty;

  bool get isValidNik => this.length == 16;

  bool get isValidPhoneNumber =>
      RegExp('^(62|0)8[1-9][0-9]{7,13}\$').hasMatch(this) &&
      !this.contains('+');

  bool get isValidPassword => this.length >= 8;

  bool get isValidEmail => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(this);
}
