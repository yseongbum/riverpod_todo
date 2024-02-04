import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WidthSpacer extends StatelessWidget {
  const WidthSpacer({
    super.key, required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    ///실제 코드에서는 안그랬는데 나는 .w로 함. 왜 안한건지는 모름
    return SizedBox(width: width.w,);
  }
}