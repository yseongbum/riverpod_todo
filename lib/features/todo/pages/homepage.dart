import 'package:flutter/material.dart';
import 'package:riverpod_todo/common/widgets/appstyle.dart';
import 'package:riverpod_todo/common/widgets/reusable_text.dart';

import '../../../common/utils/constants.dart';
import '../../../common/widgets/height_spacer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
///아직까지는loginexample2의 textstyle 설정방식이 더 나은듯. 그걸로 생각
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ReusableText(
              text: 'Todo',
              //appconst라는 private 클래스에서 색을 가져오면 돼
              style: appstyle(26, AppConst.kGreen, FontWeight.bold),
            ),
            ReusableText(
              text: 'Todo',
              style: appstyle(26, AppConst.kGreen, FontWeight.bold),
            ),
            ReusableText(
              text: 'Todo',
              style: appstyle(26, AppConst.kGreen, FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

