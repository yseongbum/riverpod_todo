import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_todo/common/widgets/appstyle.dart';
import 'package:riverpod_todo/common/widgets/custom_otn_btn.dart';
import 'package:riverpod_todo/common/widgets/height_spacer.dart';
import 'package:riverpod_todo/common/widgets/reusable_text.dart';

import '../../../common/utils/constants.dart';
import '../../../common/widgets/custome_text.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Image.asset(
                  'assets/images/todo.png',

                  ///image 크기를 .w.h해줄지 말지 고민해야 할듯 여기서는 안해줌
                  width: 300,
                ),
              ),
              const HeightSpacer(height: 20),
              Container(
                //child가 null이면 아무의미 없고 child가 있으면 container 안에서 alignment에 따라서 정해짐.
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 16.w),
                child: ReusableText(
                  text: "please enter your phone number",
                  style: appstyle(17, AppConst.kLight, FontWeight.w500),
                ),
              ),
              const HeightSpacer(height: 20),
              Center(
                child: CustomTextField(prefixIcon: Con,
              ),
              const HeightSpacer(height: 20),
              CustomOtlnBtn(
                  width: AppConst.kWidth * 0.9,
                  height: AppConst.kHeight * 0.07,
                  color: AppConst.kBkDark,
                  color2: AppConst.kLight,
                  text: 'Send Code')
            ],
          ),
        ),
      ),
    );
  }
}
