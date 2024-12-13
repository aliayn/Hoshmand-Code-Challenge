import 'package:get/get.dart';
import 'package:hoshmand_code_challenge/core/base/screen_provider.dart';
import 'package:hoshmand_code_challenge/presentation/home/cubit/home_cubit.dart';
import 'package:hoshmand_code_challenge/presentation/home/widget/home_screen.dart';

abstract class Routes {
  static const home = '/home';
}

abstract class AppPages {
  static String get initial => Routes.home;

  static final routes = <GetPage>[
    GetPage(
      name: Routes.home,
      page: (() => ScreenProvider<HomeCubit>(screen: HomeScreen())),
    ),
  ];
}
