import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_todo/common/utils/constants.dart';
import 'package:riverpod_todo/features/onboarding/pages/onboarding.dart';
import 'features/todo/pages/homepage.dart';

void main() {
  //hooks_riverpod으로 진행
  //위젯이 프로바이더를 읽을 수 있도록 하려면, 앱 전체를 providerscope 위젯으로 감싸야함.
  //여기에 프로바이더의 상태가 저장됨.
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ///screenuitl해주려면 materialapp위에서 builder로 감싸주고 child파라미터 context옆에 추가하고
    ///builder만 screenuitlinit으로 바꿔주면 돼
    return ScreenUtilInit(
      useInheritedMediaQuery: true,///키보드의 텍스트필드상의 오버레이를 피하기 위해서 필요
      designSize: const Size(375, 825),
      minTextAdapt: true,
        ///ScreenUtil 패키지의 minTextAdapt 파라미터는 텍스트 크기를 자동으로 조정하여 화면에 맞추는 기능을 활성화하는 데 사용됩니다.
        /// 이 기능을 활성화하면 텍스트 크기가 화면 크기에 맞게 조정됩니다.
        /// 이를 위해 ScreenUtil 패키지는 미디어 쿼리 (MediaQuery) 정보와 디바이스의 픽셀 밀도 (DPI)를 사용하여 정확한 값을 계산합니다1.
        ///정확히 보자면 나는 이거를 굳이 안쓰는 방향일거 같긴한데 이거 관련해서 코드로 알아보기
      builder: (context,child) {
        return MaterialApp(
          title: 'SeungBum',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: AppConst.kBkDark,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          themeMode: ThemeMode.dark,
          home: const OnBoarding(),
        );
      }
    );
  }
}
