abstract class ButtonEvent {}

class OnButtonEvent extends ButtonEvent {}

class OnSuccessEvent extends ButtonEvent {
  final String message;

  OnSuccessEvent({required this.message});
}

class OnErrorEvent extends ButtonEvent {
  final String message;

  OnErrorEvent({required this.message});
}

class OnLoadingEvent extends ButtonEvent{
  final String message;

  OnLoadingEvent({required this.message});

}