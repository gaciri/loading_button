abstract class ButtonState {
}

class ButtonButtonState extends ButtonState{}

class ErrorButtonState extends ButtonState{
  final String message;

  ErrorButtonState({required this.message});
}

class SuccessButtonState extends ButtonState{
  final String message;
  SuccessButtonState({required this.message});
}

class LoadingButtonState extends ButtonState{

  final String message;

  LoadingButtonState({required this.message});
}

