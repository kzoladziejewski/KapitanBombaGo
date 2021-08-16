class VerificationEmail {

  String email;

  VerificationEmail(String email) {
    this.email = email;
  }

  bool verificate_email(){
    bool emailValid = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
    return emailValid;
  }

}