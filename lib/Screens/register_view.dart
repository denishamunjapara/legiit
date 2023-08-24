import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:legiit/Constants/appcolors.dart';
import 'package:legiit/Helpers/strings.dart';
import 'package:legiit/customwidgets/appbutton.dart';
import 'package:legiit/customwidgets/apptextfield.dart';
import 'package:legiit/customwidgets/passtextfield.dart';
import 'package:legiit/utils/navigator_service.dart';
import 'package:legiit/utils/size_utils.dart';

import '../Blocs/Auth/SignUp/signup_bloc.dart';
import '../Blocs/Auth/SignUp/signup_event.dart';
import '../Blocs/Auth/SignUp/signup_state.dart';
import '../customwidgets/signupcustomwidget.dart';

class RegisterView extends StatelessWidget {
   RegisterView({super.key});

  var  formKey= GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider(create: (context) => SignUpBloc(),child: RegisterView());
    // return BlocProvider<SplashBloc>(
    //     create: (context) =>
    //     SplashBloc(const SplashState())..add(SplashInitialEvent()),
    //     child: const SplashScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc,SignUpState>(builder: (context,SignUpState state) {
      return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.light,
            systemNavigationBarColor: AppColors.white,
            statusBarIconBrightness: Brightness.light),
        child: registerWidget(context, state),
      );
    },);
  }

  Widget registerWidget(BuildContext context, SignUpState state){
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
          leadingWidth: 25,
          shadowColor: AppColors.originalGrey,
          leading: InkWell(
              onTap: () {
                NavigatorService.goBack();
              },
              child: Icon(Icons.arrow_back_ios_new,color: AppColors.white,)),
          title: Text(AppStrings.newAcc,style: TextStyle(color: AppColors.white),)
          ,backgroundColor: AppColors.black),
      body:

      Form(
        key:formKey ,
        child: Padding(
          padding: const EdgeInsets.only(left: 20,bottom: 20,right: 20),
          child: SingleChildScrollView(
            child: Column(children: [
              appTextField(AppStrings.fName, AppStrings.fName)
              ,appTextField(AppStrings.userName, AppStrings.userName)
              ,appTextField(AppStrings.emailAddress, AppStrings.emailAddress),
              appPassTextField(AppStrings.password, AppStrings.password,
                  Icon( state.isPasswordVisible!? Icons.visibility:Icons.visibility_off,color: AppColors.originalGrey,size: 20,),
                  state.isPasswordVisible!?false:true,
                    (){
                      context.read<SignUpBloc>().add(
                          SignupObscureTextEvent(
                              !state.isPasswordVisible!,
                              state.isCPasswordVisible!));
                  }
              ),
              appPassTextField(AppStrings.cPass, AppStrings.cPass, Icon(state.isCPasswordVisible!? Icons.visibility:Icons.visibility_off,color: AppColors.originalGrey,size: 20,),state.isCPasswordVisible!?false:true,
                      (){
                    context.read<SignUpBloc>().add(
                        SignupObscureTextEvent(
                            state.isPasswordVisible!,
                            !state.isCPasswordVisible!,));
                  }),
              SizedBox(height: getVerticalSize(20),),
              twoFAuthCustomWidget(state.isToggleEnable,  (value) {
                context.read<SignUpBloc>().add(

                    SignUpToggleEvent(value!)

                );
                print('Toggle Value : $value');
              }),
              SizedBox(height: getVerticalSize(10),),
              privacyCheckCustomWidget(
state.isClicked,(value) {
  context.read<SignUpBloc>().add(
    SignupCheckBoxEvent(value!)
  );
},
              ),
              SizedBox(height: getVerticalSize(10),),
              appButton(AppStrings.signUpButtonText, () {

                if(formKey.currentState!.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                  print('Form is Valid...');
                }
              })
            ],),
          ),
        ),
      ),
    );
  }


}
