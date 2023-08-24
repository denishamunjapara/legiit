import 'package:equatable/equatable.dart';

abstract class SignInState extends Equatable{
  final bool? isSignInPassVisibility;
final String? errorText;
  const SignInState(this.isSignInPassVisibility,this.errorText);
  @override
  List<Object?> get props => [isSignInPassVisibility,errorText];
}

class SignInInitialState extends SignInState{
  const SignInInitialState(super.isPasswordVisible,super.errorText);
}
class SignInObscureTextState extends SignInState{
  const SignInObscureTextState(super.isPasswordVisible,super.errorText);
}
class SignInValidState extends SignInState{
  const SignInValidState(super.isPasswordVisible,super.errorText);
}
class SignInErrorTextState extends SignInState{
  const SignInErrorTextState(super.isPasswordVisible,super.errorText);
}
class SignInLoadingState extends SignInState{
  const SignInLoadingState(super.isPasswordVisible,super.errorText);
}