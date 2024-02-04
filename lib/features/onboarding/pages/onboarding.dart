import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:riverpod_todo/common/utils/constants.dart';
import 'package:riverpod_todo/common/widgets/appstyle.dart';
import 'package:riverpod_todo/common/widgets/reusable_text.dart';
import 'package:riverpod_todo/common/widgets/width_spacer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/page_one.dart';
import '../widgets/page_two.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  //페이지뷰 만들어주기 위한 과정
  final PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            //스크롤이 가능해야하니까 physics를 아래와 같이 설정해 놓는것.
            physics: const AlwaysScrollableScrollPhysics(),
            //스크롤 기능을 가능하게 해줄 컨트롤러를 넣어줘야지
            controller: pageController,
            children: const [
              PageOne(),
              PageTwo(),
            ],
          ),
          //보통은 positioned 위젯을 사용하는데 이 앱의 경우에는 align위젯을 사용
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          pageController.nextPage(
                              duration: Duration(milliseconds: 600),
                              curve: Curves.ease);
                        },
                        //패키지를 사용함 또한 사이즈를 screenutil을 사용안함 아이콘은 사용안할만 한거 같기도
                        child: const Icon(
                          Ionicons.chevron_forward_circle,
                          size: 30,
                          //main에서 thememode를 dark로 설정해놔서 일단 하얀색의 아이콘으로 설정
                          color: AppConst.kLight,
                        ),
                      ),
                      const WidthSpacer(width: 5),
                      ReusableText(
                          text: "Skip",
                          style:
                              appstyle(16, AppConst.kLight, FontWeight.w500)),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      //아래와 같이 내가 원하는 페이지로 직접 옮길 수도 있음.
                      //pageController.jumpToPage(page)
                      /*
                      Flutter에서 curve는 애니메이션을 부드럽게 만들기 위한 함수입니다.
                      이 함수는 시간에 따른 값의 변화를 나타내는 함수입니다.
                      Flutter에서는 Curves 클래스를 제공하여 일반적인 애니메이션 curve를 제공합니다.
                      예를 들어, Curves.easeIn은 빠르게 시작하고 천천히 끝나는 cubic curve입니다.
                      Curves.elasticIn은 반동 효과가 있는 elastic curve입니다.
                      Curves.bounceIn은 반동하는 bounce curve입니다. 이 외에도 다양한 curve를 제공합니다.
                      애니메이션 curve를 사용하면 애니메이션의 속도와 방향을 조절할 수 있습니다.
                      이를 통해 애니메이션을 더 부드럽게 만들 수 있습니다.ㅁ
                       */
                      pageController.nextPage(
                          duration: Duration(milliseconds: 600),
                          curve: Curves.ease);
                    },
                    child: SmoothPageIndicator(
                      //페이지가 2개이니까 count는 2로 해놓음
                      controller: pageController,
                      count: 2,
                      //effect는 필수 파라미터는 아님 커스텀할때 필요한 느낌
                      effect: const WormEffect(
                        dotHeight: 12,
                        dotWidth: 16,
                        spacing: 10,
                        dotColor: AppConst.kYellow,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
