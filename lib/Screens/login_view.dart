import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:legiit/Blocs/Auth/SignIn/signin_bloc.dart';
import 'package:legiit/Blocs/Auth/SignIn/signin_event.dart';
import 'package:legiit/Blocs/Auth/SignIn/signin_state.dart';

import 'package:legiit/Constants/appcolors.dart';
import 'package:legiit/Helpers/strings.dart';
import 'package:legiit/Routes/routes.dart';

import 'package:legiit/customwidgets/appbutton.dart';
import 'package:legiit/customwidgets/apptext.dart';
import 'package:legiit/customwidgets/apptextfield.dart';
import 'package:legiit/customwidgets/passtextfield.dart';

import 'package:legiit/utils/navigator_service.dart';
import 'package:legiit/utils/size_utils.dart';

class LoginView extends StatelessWidget {

  final formKey = GlobalKey<FormState>();


   LoginView({super.key});

  static Widget builder(BuildContext context) {
   return BlocProvider(create: (context) => SignInBLoc(),child: LoginView());
    // return BlocProvider<SplashBloc>(
    //     create: (context) =>
    //     SplashBloc(const SplashState())..add(SplashInitialEvent()),
    //     child: const SplashScreen());
  }

  @override
  Widget build(BuildContext context) {
   return BlocBuilder<SignInBLoc,SignInState>(builder: (context,SignInState state) {
      return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.light,
            systemNavigationBarColor: AppColors.white,
            statusBarIconBrightness: Brightness.light),
        child: signInWidget(context, state),
      );
    },);
  }

  Widget signInWidget(BuildContext context, SignInState state){
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child:   Padding(
            padding: const EdgeInsets.only(top: 150,right: 20,left: 20,bottom: 20),
            child:   Column(

              children: [
                Container(height: getVerticalSize(150),width: getHorizontalSize(150),color: AppColors.blue,),
                appTextField(AppStrings.email,AppStrings.enterEmail),
              appPassTextField(AppStrings.password, AppStrings.password, Icon(state.isSignInPassVisibility!? Icons.visibility: Icons.visibility_off,color: AppColors.originalGrey,size: 20,), state.isSignInPassVisibility!?false:true, () {
                context.read<SignInBLoc>().add(
                    SignInObscureTextEvent(
                        !state.isSignInPassVisibility!,
                       ));
              }),
                SizedBox(height: getVerticalSize(20),),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    appText(AppStrings.fPass),
                    appText(AppStrings.privacyP),
                  ],),
                SizedBox(height: getVerticalSize(50),),
                appButton(AppStrings.signIn,()async {
                  if(formKey.currentState!.validate()){

                    print('signIn validate');
                    print('SignIn Clicked....');
                    NavigatorService.pushNamed(AppRoutes.registerViewpage);
                  }


               //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterView()));
                }),
                SizedBox(height: getVerticalSize(100),),
                InkWell(
onTap: () {
  NavigatorService.pushNamed(AppRoutes.registerViewpage);
},
                    child: Text(AppStrings.newAcc,style: TextStyle(color: AppColors.white,fontSize: getFontSize(18)),)),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
