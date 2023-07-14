class DartModifier {
  String publicVariable = "public variable";
  String _privateVariable = "private variable";

  String get privateVariable => "(get)" + _privateVariable;

  set privateVariable(String value) {
    _privateVariable = value;
  }
}
