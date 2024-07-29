
import 'package:loading_button/blocs/button/event.dart';

import 'button/bloc.dart';

class LoadingButtonController {
  late final ButtonBloc _buttonBloc;
  LoadingButtonController(){
    _buttonBloc = ButtonBloc();
  }
  ButtonBloc get bloc => _buttonBloc;
  void showButton(){
    _buttonBloc.add(OnButtonEvent());
  }
  void showSuccess({String message = "Success"}){
    _buttonBloc.add(OnSuccessEvent(message: message));
  }
  void showError({String message = "Error"}){
    _buttonBloc.add(OnErrorEvent(message: message));
  }

  void showLoading({String message = "Loading"}){
    _buttonBloc.add(OnLoadingEvent(message: message));
  }
}