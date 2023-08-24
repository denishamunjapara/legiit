import 'package:flutter/cupertino.dart';
import 'package:legiit/Screens/login_view.dart';
import 'package:legiit/Screens/register_view.dart';



class AppRoutes {

  static const String loginViewpage = '/LoginView';
  static const String registerViewpage = '/RegisterView';
  static const String forgotPassView = '/forgotPassView';

  static Map<String,WidgetBuilder> get routes =>{
    loginViewpage: LoginView.builder,
    registerViewpage:RegisterView.builder,
    //forgotPassView:ForgotPassView.builder
  };

  // static final routes = [
  //   GetPage(
  //     name: loginViewpage,
  //     page: () => const LoginView(),
  //     binding: LoginViewBinding(),
  //   ),
  //   GetPage(
  //     name: registerViewpage,
  //     page: () =>const RegisterView(),
  //     binding: RegisterViewBinding(),
  //   ),
  // ];
}
