class SignInEvent  {}

class SignInInitialEvent extends SignInEvent{

}


class SignInObscureTextEvent extends SignInEvent{
 bool isSignInPassVisibility=false;

SignInObscureTextEvent(this.isSignInPassVisibility);
}

class SignInTextChangeEvent extends SignInEvent{
 String emailValue;
 String passwordValue;

 SignInTextChangeEvent(this.emailValue,this.passwordValue);
}

class SignInSubmittedEvent extends SignInEvent{
 String email;
 String password;

 SignInSubmittedEvent(this.email,this.password);
}