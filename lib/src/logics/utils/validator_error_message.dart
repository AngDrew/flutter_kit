/// this method will return an String for error message on text field.
/// use this method on view or view model to return error message directly
String? validateString(String? value, {String? fieldName}) {
  if (value == null && (value?.isEmpty ?? true)) {
    if (fieldName != null) {
      return '$fieldName is required';
    }
    return 'required';
  }
}
