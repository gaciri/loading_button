import 'package:bloc/bloc.dart';

import 'event.dart';
import 'state.dart';

class ButtonBloc extends Bloc<ButtonEvent, ButtonState> {
  ButtonBloc() : super(ButtonButtonState()){
    on<ButtonEvent>((event,emit){
      emit(ButtonButtonState());
    });
    on<OnSuccessEvent>((event,emit){
      emit(SuccessButtonState(message: event.message));
    });
    on<OnErrorEvent>((event,emit){
      emit(ErrorButtonState(message: event.message));
    });
    on<OnLoadingEvent>((event,emit){
      emit(LoadingButtonState(message: event.message));
    });
  }

}
