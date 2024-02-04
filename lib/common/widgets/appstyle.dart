import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle appstyle(double size, Color color, FontWeight fw){
  //flutter screenutil에 의해 text의 크기를 걸어줘야해서 size  뒤에 sp를 해주는것
  return GoogleFonts.poppins(fontSize: size.sp,color: color, fontWeight: fw);
}