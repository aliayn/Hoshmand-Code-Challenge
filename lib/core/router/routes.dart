import 'package:get/get.dart';
import 'package:hoshmand_code_challenge/core/base/screen_provider.dart';
import 'package:hoshmand_code_challenge/presentation/home/bloc/home_bloc.dart';
import 'package:hoshmand_code_challenge/screens/home_screen.dart';

abstract class Routes {
  static const home = '/home';
}

abstract class AppPages {
  static String get initial => Routes.home;

  static final routes = <GetPage>[
    GetPage(
      name: Routes.home,
      page: (() => ScreenProvider<HomeBloc>(screen: HomeScreen())),
    ),
  ];
}
