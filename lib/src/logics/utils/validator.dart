bool validateEmail(String email) {
  final RegExp regex = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
  return regex.hasMatch(email);
}

bool validatePassword(String password) {
  // Minimum 1 Upper case
  // Minimum 1 Lower case
  // Minimum 1 Numeric Number
  // Minimum 1 Special Character
  // Common Allow Character ( ! @ # $ & * ~ )

  final RegExp regex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  return regex.hasMatch(password);
}
