import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///모든 앱의 constants들을 저장
/// private클래스로 작성해줘야함.

class AppConst{
  AppConst._(); //private으로 만들어줌

  static const Color kBkDark = Color(0xFF2a2b2e);
  static const Color kLight = Color(0xFFFFFFFF);
  static const Color kRed = Color(0xFFd80000);
  static const Color kBlueLight = Color(0xFF027eb5);
  static const Color kGreyDk = Color(0xFF707070);
  static const Color kGreyLight = Color(0xFF667781);
  static const Color kGreen = Color(0xFF20a31E);
  static const Color kYellow = Color(0xFFF9F900);
  static const Color kBkLight = Color(0x58797777);
  static const Color kGreyBk = Color(0xFF202c33);

  //앱 main dart에서 설정 높이를 375*825로 해줘서 여기서 .w .h 를 해줘야함
  static double kWidth =375.w;
  static double kHeight = 825.h;
  static double kRadius = 12.h;

}