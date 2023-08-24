import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:legiit/Blocs/Auth/SignUp/signup_event.dart';
import 'package:legiit/Blocs/Auth/SignUp/signup_state.dart';

class SignUpBloc extends Bloc<SignUpEvent,SignUpState>{
  var  formKey= GlobalKey<FormState>();
  
  SignUpBloc():super( SignUpInitialState(false,false,false,false)){

    on<SignUpInitialEvent>((event, emit) {
      emit( SignUpInitialState(false,false,false,false));
    });



    on<SignupObscureTextEvent>((event, emit) {
      emit(SignUpObscureTextState(event.isPasswordVisible,event.isCPasswordVisible,state.isToggleEnable,state.isClicked));
    });
on<SignupCheckBoxEvent>((event, emit) {
  emit(SignUpCheckBoxState(state.isPasswordVisible,state.isCPasswordVisible,state.isToggleEnable, event.isChecked));
});

    on<SignUpToggleEvent>((event, emit) {
      emit(SignUpToggleEnableState(state.isPasswordVisible, state.isCPasswordVisible, event.isToggleEnable,state.isClicked));
    });

    // on<SignupConfirmObscureTextEvent>((event, emit) {
    //
    // });
    // on<SignUpInitialEvent>((event, emit) {
    //   emit(const SignUpInitialState(false, false));
    // });
    //
    // on<SignupObscureTextEvent>((event, emit) {
    //   emit(SignUpInitialState(
    //       event.isPasswordVisible, event.isCPasswordVisible));
    // });
  }
}