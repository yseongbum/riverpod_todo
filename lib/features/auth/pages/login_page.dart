import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_todo/common/widgets/height_spacer.dart';

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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
