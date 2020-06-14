class Utilis {
  static String getUserName(String email) {
    return "live:${email.split('@')[0]}";
  }

  static String getIntials(String name) {
    List<String> nameSplit = name.split(" ");
    String firstNameIntial = nameSplit[0][0];
    String lastNameIntial = nameSplit[1][0];
    return firstNameIntial + lastNameIntial;
  }
}
