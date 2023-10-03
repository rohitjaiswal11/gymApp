import 'package:flutter/material.dart';
import 'package:lbm_fitness/Helper_Widget/colors.dart';

class TxtBox extends StatelessWidget {
  final String? hint;
  final bool? obscureText;
  final String? valueInput;
  final String? Function(String?)? validator;

  TxtBox({
    Key? key,
    this.hint,
    this.obscureText = false,
    this.valueInput,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      initialValue: valueInput,
      validator: validator,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide( color:AppColor.btncolor,),
          borderRadius: BorderRadius.circular(5)
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide( color:AppColor.btncolor,),
          borderRadius: BorderRadius.circular(5)
        ),
        focusedBorder:  OutlineInputBorder(
          borderSide: BorderSide( color:AppColor.btncolor,),
          borderRadius: BorderRadius.circular(5)
        ),
        enabledBorder:  OutlineInputBorder(
          borderSide: BorderSide( color:AppColor.btncolor,),
          borderRadius: BorderRadius.circular(5)
        ),
        disabledBorder:OutlineInputBorder(
          borderSide: BorderSide( color:AppColor.btncolor,),
          borderRadius: BorderRadius.circular(5)
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide( color:AppColor.btncolor,),
          borderRadius: BorderRadius.circular(5)
        ),
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        contentPadding: EdgeInsets.only(left: 20),
      ),
    );
  }
}
