import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeightSpacer extends StatelessWidget {
  const HeightSpacer({
    super.key, required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    ///실제 코드에서는 안그랬는데 나는 .h로 함. 왜 안한건지는 모름
    ///1:44:14에는 바꿔줌 내가 맞음
    return SizedBox(height: height.h,);
  }
}
