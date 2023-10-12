class AppValidation {
  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a name';
    }
    return null;
  }

   static String? validateEmail(String? value) {
    print("clkk");
    if (value == null || value.isEmpty) {
      return 'Please enter an email address';
    } else if (!value.contains('@')) {
      return 'Invalid email format';
    }
    // You can add more complex email validation logic here if needed.
    return null;
  }

  static String? Validatenumeric(){

  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }

  static String? commonValidator(String? data) {
    if (data!.isEmpty) {
      return "Please Enter data";
    }
    return null;
  }

  static String? documentValidator(String? data) {
    if (data!.isEmpty) {
      return " Please Enter The Document Number";
    }
    return null;
  }

  // static String?ifscCodeValidator(String? data) {
  //   if (data!.isEmpty) {
  //     return "Please Enter The IFSC Code";
  //   }else if(ifscrejx(data.toString()) != true) {
  //     return "IFSC Code is Invalid ";
  //   }else if(data.length!=11){
  //     return "IFSC Code Length Is Invalid ";
  //   }
  //   return null;
  // }

  // static String?swiftCodeValidator(String? data) {
  //   if (data!.isEmpty) {
  //     return "Please Enter The IFSC Code";
  //   }else if(swiftrejax(data.toString()) != true) {
  //     return "IFSC Code is Invalid ";
  //   }
  //   return null;
  // }

  static String? texId(String? data) {
    if (data!.isEmpty) {
      return "Please Enter the Transaction ID";
    }
    return null;
  }

  static String? Dob(String? data) {
    if (data!.isEmpty) {
      return 'Please Enter Date of Birth';
    }
    return null;
  }

  bool isEmail(String em) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = new RegExp(p);

    return regExp.hasMatch(em);
  }

  bool ifscrejx(String em) {
    String p = "^[A-z]{4}0[A-Z0-9]{6}\$";
    // String p ="/^[A-Z]{4}0[A-Z0-9]{6}\$";
    RegExp regExp = new RegExp(p);
    return regExp.hasMatch(em);
  }
}
