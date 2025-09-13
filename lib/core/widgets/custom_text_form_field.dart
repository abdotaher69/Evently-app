import 'package:evently_online_sat/core/resources/colors_manager.dart' ;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key,
  required this.labelText,  this.prefixIcon,
    required this.keyboardType,  this.suffixIcon, this.isSecure = false
  });
  final String labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
 final bool  isSecure;


  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      obscureText: isSecure,
      style: GoogleFonts.inter(fontSize: 16.sp, color: ColorsManager.black1C, fontWeight: FontWeight.w400),
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: prefixIcon,
        suffixIcon:suffixIcon,

      ),
    );
  }
}
