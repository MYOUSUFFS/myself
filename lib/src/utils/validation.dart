class MyValidation {
  String? nameValidator(String? value) {
    String pattern = r'[a-zA-Z]';
    RegExp regex = RegExp(pattern);
    if (value?.isEmpty ?? true) return '*Please fill in this field';
    if (!regex.hasMatch('$value'.trim())) {
      return '*Enter a valid name';
    } else {
      return null;
    }
  }

  String? ifscValidator(String? value) {
    String pattern = r'^[A-Z]{4}0[A-Z0-9]{6}$';
    RegExp regex = RegExp(pattern);
    if (value?.isEmpty ?? true) return '*Please fill in this field';
    if (!regex.hasMatch('$value'.trim())) {
      return '*Enter a valid ifsc';
    } else {
      return null;
    }
  }

  String? accNumValidator(String? value) {
    String pattern = r"^[0-9]*$";
    RegExp regex = RegExp(pattern);
    if (value?.isEmpty ?? true) return '*Please fill in this field';
    if (!regex.hasMatch('$value'.trim())) {
      return '*Enter a valid ifsc';
    } else {
      return null;
    }
  }

  String? mobileNumValidator(String? value) {
    String pattern = r"^[6-9][0-9]*$";
    RegExp regex = RegExp(pattern);
    if (value?.isEmpty ?? true) return 'Mobile number is required*';
    if (!regex.hasMatch('$value'.trim()) || !('$value'.length == 10)) {
      return 'Enter a valid mobile number*';
    } else {
      return null;
    }
  }

  String? fullNameValidate(String? value) {
    String pattern = r'^[a-z A-Z,.\-]+$';
    RegExp regExp = RegExp(pattern);
    if (value?.isEmpty ?? true) {
      return 'Name is required*';
    } else if (!regExp.hasMatch('$value')) {
      return 'Please enter valid name';
    }
    return null;
  }

  String? emailValidator(String? email) {
    RegExp regExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (email?.isEmpty ?? false) {
      return 'Email is required*';
    } else if (!regExp.hasMatch('$email')
        /* ||
      !email.contains('@') ||
      !email.contains('.')*/
        ) {
      return 'Invalid Email';
    }
    return null;
  }

  String? passwordValidator(String? value) {
    ///r'^
    //   (?=.*[A-Z])       // should contain at least one upper case
    //   (?=.*[a-z])       // should contain at least one lower case
    //   (?=.*?[0-9])      // should contain at least one digit
    //   (?=.*?[!@#\$&*~]) // should contain at least one Special character
    //   .{8,}             // Must be at least 8 characters in length
    // $

    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

    if (value?.isEmpty ?? true) {
      return 'Password is required';
    } else if (!regex.hasMatch('$value')) {
      return 'Password should contain at least, \none upper case (A-Z). \none lower case (a-z). \none digit (0-9). \none Special character (*&^%\$#@!~). \n and must be at least 8 characters in length.';
    }

    return null;
  }

  String? gstValidator(String? value) {
    // Valid GST Numbers for testing
    // '27AAPFU0939F1ZV'
    // '27AASCS2460H1Z0'
    // '29AAGCB7383J1Z4'
    if (value?.isEmpty ?? true) {
      return 'GST number is required*';
    }
    if (!RegExp(r'\d{2}[A-Z]{5}\d{4}[A-Z]{1}[A-Z\d]{1}[Z]{1}[A-Z\d]{1}')
        .hasMatch('$value')) {
      return 'GST number is not valid';
    }
    if (int.parse('$value'.substring(0, 2)) > 38) {
      return 'First two digits cannot be greater than 38';
    }

    return null;
  }

  String? panNumberValidator(String? value) {
    ////1) The first three letters are sequence of alphabets from AAA to zzz
    /* 2) The fourth character informs about the type of holder of the Card. Each assesse is unique:`
  
      C — Company
      P — Person
      H — HUF(Hindu Undivided Family)
      F — Firm
      A — Association of Persons (AOP)
      T — AOP (Trust)
      B — Body of Individuals (BOI)
      L — Local Authority
      J — Artificial Judicial Person
      G — Government
  
  
  3) The fifth character of the PAN is the first character
      (a) of the surname / last name of the person, in the case of
  a "Personal" PAN card, where the fourth character is "P" or
      (b) of the name of the Entity/ Trust/ Society/ Organisation
  in the case of Company/ HUF/ Firm/ AOP/ BOI/ Local Authority/ Artificial Jurdical Person/ Govt,
  where the fourth character is "C","H","F","A","T","B","L","J","G".
  
  4) The last character is a alphabetic check digit.*/

    String pattern = r'[A-Z]{3}[ABCFGHLJPTF]{1}[A-Z]{1}[0-9]{4}[A-Z]{1}';
    if (value?.isEmpty ?? true) {
      return 'Pan number is required*';
    }
    if (!RegExp(pattern).hasMatch('$value')) {
      return 'Pan Number is not valid';
    }
    return null;
  }

  String? aadhaarNumberValidator(String? value) {
    String pattern = r'[0-9]{12}';
    if (value?.isEmpty ?? true) {
      return 'Aadhaar number is required*';
    }
    if (!RegExp(pattern).hasMatch('$value')) {
      return 'Aadhaar Number is not valid';
    }
    return null;
  }
}
