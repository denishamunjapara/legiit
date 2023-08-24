import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:legiit/Blocs/Auth/SignIn/signin_event.dart';
import 'package:legiit/Blocs/Auth/SignIn/signin_state.dart';

class SignInBLoc extends Bloc<SignInEvent,SignInState>{
SignInBLoc():super(const SignInInitialState(false,'')){


  on<SignInObscureTextEvent>((event, emit){
    emit(SignInObscureTextState(event.isSignInPassVisibility,state.errorText));
   // emit(SignInObscureTextState(event.isSignInPassVisibility));
  } );
on<SignInTextChangeEvent>((event, emit) {
  if(event.emailValue.isEmpty){
    emit(SignInErrorTextState(state.isSignInPassVisibility,'Enter valid Email'));
  }else if((event.passwordValue.length)<4){
  emit(SignInErrorTextState(state.isSignInPassVisibility,"weak Password"));
  }else{
    emit(SignInValidState(state.isSignInPassVisibility,state.errorText));
  }
 });

on<SignInSubmittedEvent>((event, emit) {
  emit(SignInLoadingState(state.isSignInPassVisibility,state.errorText));
});

}

}