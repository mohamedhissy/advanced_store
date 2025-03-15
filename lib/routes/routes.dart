import 'package:advanced_store/features/out_boarding/view/out_boarding_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../config/dependancy_injection.dart';
import '../core/resources/manager_strings.dart';
import '../features/auth/presentation/view/login_view.dart';
import '../features/auth/presentation/view/register_view.dart';
import '../features/cart/presentation/view/cart_view.dart';
import '../features/details/presentation/view/view_details.dart';
import '../features/home/presentation/view/home_view.dart';
import '../features/profile/presentation/view/profile_view.dart';
import '../features/settings/presentation/view/setting_view.dart';
import '../features/splash/presentaion/view/splash_screen.dart';

class Routes {
  static const String splashScreen = '/splash_screen';
  static const String outBoardingView = '/out_boarding_view';
  static const String loginView = '/login_view';
  static const String registerView = '/register_view';
  static const String homeView = '/home_view';
  static const String profileView = '/profile_view';
  static const String detailsView = '/view_details';
  static const String settingView = '/setting_view';
  static const String cartView = '/cart_view';
  static const String brandView = '/view_details';

}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        initSplash();
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.outBoardingView:
        return MaterialPageRoute(builder: (_) =>  OutBoardingView());
      case Routes.loginView:
        initAuth();
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerView:
        initAuth();
        return MaterialPageRoute(builder: (_) =>  RegisterView());
      case Routes.homeView:
        initHome();
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.profileView:
        initProfile();
        return MaterialPageRoute(builder: (_) =>  ProfileView());
      case Routes.detailsView:
        initDetailse();
        return MaterialPageRoute(builder: (_) =>  DetailsView());
      case Routes.cartView:
        initHome();
        return MaterialPageRoute(builder: (_) =>  CartView());
    case Routes.settingView:
      initSetting();
      return MaterialPageRoute(builder: (_) =>  SettingView());
      default:
        return unDefineRoute();
    }
  }

  static Route<dynamic> unDefineRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(ManagerStrings.notFoundRoute),
        ),
      ),
    );
  }
}

