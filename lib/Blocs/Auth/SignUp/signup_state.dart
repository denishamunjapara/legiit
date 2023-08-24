import 'package:equatable/equatable.dart';

abstract class SignUpState extends Equatable{
  final bool? isPasswordVisible;
  final bool? isCPasswordVisible;
  late  bool isToggleEnable;
  final bool isClicked;

    SignUpState(this.isPasswordVisible,this.isCPasswordVisible,this.isToggleEnable,this.isClicked);
  @override
  List<Object?> get props => [isPasswordVisible, isCPasswordVisible,isToggleEnable,isClicked];
}



class SignUpInitialState extends SignUpState{
   SignUpInitialState(super.isPasswordVisible, super.isCPasswordVisible,super.isToggleEnable,super.isClicked);
}
class SignUpObscureTextState extends SignUpState{
   SignUpObscureTextState(super.isPasswordVisible, super.isCPasswordVisible,super.isToggleEnable,super.isClicked);
}
class SignUpCheckBoxState extends SignUpState{
  SignUpCheckBoxState(super.isPasswordVisible, super.isCPasswordVisible,super.isToggleEnable,super.isClicked);
}

class SignUpToggleEnableState extends SignUpState{
   SignUpToggleEnableState(super.isPasswordVisible, super.isCPasswordVisible,super.isToggleEnable,super.isClicked);
}

// class SignUpTextFieldChangeState extends SignUpState{
//   const SignUpTextFieldChangeState(super.isPasswordVisible, super.isCPasswordVisible);
//
// }
// class SignUpSubmittedState extends SignUpState{
//   const SignUpSubmittedState(super.isPasswordVisible, super.isCPasswordVisible);
// }


//
//
// class SignUpState extends Equatable {
//   final bool? isPasswordVisible;
//   final bool? isCPasswordVisible;
//   const SignUpState(this.isPasswordVisible, this.isCPasswordVisible);
//   @override
//   List<Object?> get props => [isPasswordVisible, isCPasswordVisible];
// }
//
// class SignUpInitialState extends SignUpState {
//   const SignUpInitialState(super.isPasswordVisible, super.isCPasswordVisible);
// }
