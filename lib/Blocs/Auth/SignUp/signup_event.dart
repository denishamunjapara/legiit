abstract class SignUpEvent{}



class SignUpInitialEvent extends SignUpEvent {}



class SignupObscureTextEvent  extends SignUpEvent{
  bool isPasswordVisible=false;
  bool isCPasswordVisible=false;
  SignupObscureTextEvent(this.isPasswordVisible,this.isCPasswordVisible);
}



class SignupCheckBoxEvent  extends SignUpEvent{
  bool isChecked=false;
  SignupCheckBoxEvent(this.isChecked);
}
class SignUpToggleEvent extends SignUpEvent{
  bool isToggleEnable=false;
  SignUpToggleEvent(this.isToggleEnable);
}





