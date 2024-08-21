

class PValidators {
  PValidators._();

  static String? emailValidation(String? email) {
    final RegExp emailRegEx = RegExp(r'^([a-z0-9_.-]+)@([a-z0-9_.-]+)\.([a-z]+){2,5}$');

    if(email == null || email.isEmpty){
      return 'Email is needed';
    }

    if(!emailRegEx.hasMatch(email)){
      return 'Invalid Email';
    }
    return null;
  }


  static String? passWordValidation(String? passWord){
    final RegExp capAlphabet = RegExp(r'([A-Z]+)');
    final RegExp lowerAlphabet = RegExp(r'([a-z]+)');
    final RegExp numeric = RegExp(r'([0-9]+)');
    final RegExp symbols = RegExp(r'([~!@#$%^&*()_+-=`><?/.,\|]+)');

    if(passWord == null || passWord.isEmpty){
      return 'Password required';
    }

    if(passWord.length < 8){
      return 'At least 8 characters required';
    }

    if(!passWord.contains(capAlphabet)){
      return 'At least one Capital letter required';
    }

    if(!passWord.contains(lowerAlphabet)){
      return 'At least one lower case letter required';
    }

    if(!passWord.contains(numeric)){
      return 'At least one digit required';
    }

    if(!passWord.contains(symbols)){
      return 'At least one symbol required';
    }

    return null;
  }

  static String? userNameValidation(String? userName){
    RegExp checkAtSymbol = RegExp(r'([@])');
    RegExp subsequentChecks = RegExp(r'([a-z0-9_.-]+)',caseSensitive: true);

    if(userName == null || userName.isEmpty){
      return 'Username required';
    }

    if(!userName.contains(checkAtSymbol,0)){
      return 'Begin Username with @';
    }

    if(!userName.contains(subsequentChecks)){
      return 'Invalid Username';
    }

    return null;
  }

  static String? phoneNumberValidation(String? phoneNumber){
    final RegExp phoneNumberRegExp = RegExp(r'^\b\d{4}([-_.]?)\d{3}([-_.]?)\d{4}\b$');

    if(phoneNumber == null || phoneNumber.isEmpty){
      return 'Phone number required';
    }

    if(!phoneNumberRegExp.hasMatch(phoneNumber)){
      return 'Invalid Phone number';
    }
    return null;
  }

  static String? namesValidation(String? name){
    RegExp capCheck = RegExp(r'([A-Z])');
    RegExp lowCheck = RegExp(r'([a-z]+)');


    if(name == null || name.isEmpty){
      return 'Names required';
    }

    if(!name.contains(capCheck,0)){
      return 'Name must start with capital letter';
    }

    if(!name.contains(lowCheck,1)){
      return 'All subsequent letters should be in lower case';
    }

    return null;
  }
}