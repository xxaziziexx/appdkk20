import 'package:bloc/bloc.dart';
import 'package:appdkk/homepage/home_screen.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  MyAccountClickedEvent,
  MyOrdersClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => Home();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield Home();
        break;

      case NavigationEvents.MyAccountClickedEvent:
        yield Home();
        break;

      case NavigationEvents.HomePageClickedEvent:
        yield Home();
        break;
    }
  }
}
