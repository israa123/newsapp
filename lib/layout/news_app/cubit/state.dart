abstract class NewsStates {}

class NewsInitialState extends NewsStates {}

class NewsBottomNavState extends NewsStates {}

class NewsLoadingState extends NewsStates {}

class NewsGetBusniessSuccessState extends NewsStates {}

class NewsGetBusniessErorrState extends NewsStates {
  late final String error;
  NewsGetBusniessErorrState(this.error);
}
