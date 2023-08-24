import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:legiit/customwidgets/apptextfield.dart';

import '../Constants/appcolors.dart';
import '../Helpers/strings.dart';
import '../utils/navigator_service.dart';

class ForgotPassView extends StatelessWidget {
  const ForgotPassView({super.key});


  // static Widget builder(BuildContext context) {
  //   return BlocProvider(create: (context) => SignUpBloc(),child:const RegisterView());
  //   // return BlocProvider<SplashBloc>(
  //   //     create: (context) =>
  //   //     SplashBloc(const SplashState())..add(SplashInitialEvent()),
  //   //     child: const SplashScreen());
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leadingWidth: 25,
          shadowColor: AppColors.originalGrey,
          leading: InkWell(
              onTap: () {
                NavigatorService.goBack();
              },
              child: Icon(Icons.arrow_back_ios_new,color: AppColors.white,)),
          title: Text(AppStrings.forgotPassword,style: TextStyle(color: AppColors.white),)
          ,backgroundColor: AppColors.black),

      body: Column(children: [
        appTextField(AppStrings.email, AppStrings.email)
      ],),
    );
  }
}
