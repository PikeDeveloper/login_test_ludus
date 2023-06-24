class Validators {
  static String? email(String? value) {
    if (value!.isEmpty) {
      return "El email es requerido";
    }
    if (value.contains("@") && value.contains(".") && value.contains("com")) {
      return null;
    }
    return "El email debe contener el caracter @, “.”, “com";
  }

  static String? password(String? value) {
    if (value!.isEmpty) {
      return "El password es requerido";
    }
    if (value.length < 8) {
      return "El password debe tener al menos 8 caracteres";
    }
    return null;
  }
}
