import 'package:bloc/bloc.dart';
import 'package:appdkk/homepage/home_screen.dart';
import 'package:appdkk/screen/sidebar/aboutus_screen.dart';
import 'package:appdkk/screen/sidebar/contactus_screen.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  AboutUsClickedEvent,
  ContactUsClickedEvent,
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

      case NavigationEvents.AboutUsClickedEvent:
        yield About();
        break;

      case NavigationEvents.ContactUsClickedEvent:
        yield Contact();
        break;
    }
  }
}
