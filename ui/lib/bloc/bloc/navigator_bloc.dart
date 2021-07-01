import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'navigator_event.dart';
part 'navigator_state.dart';

class NavigatorBloc extends Bloc<AppEvent, AppState> {
  NavigatorBloc() : super(AppState.AllTask);

  @override
  Stream<AppState> mapEventToState(
    AppEvent event,
  ) async* {
    print(event);
    switch (event) {
      case AppEvent.LogIn:
        yield AppState.LogIn;
        break;
      case AppEvent.LogOut:
        yield AppState.LogOut;
        break;
      case AppEvent.AllTask:
        yield AppState.AllTask;

        break;
      case AppEvent.CreateTask:
        // TODO: Handle this case.
        break;
      case AppEvent.CreateBenefactor:
        // TODO: Handle this case.
        break;
      case AppEvent.CreateCharity:
        // TODO: Handle this case.
        break;
      case AppEvent.SignUp:
        // TODO: Handle this case.
        break;
    }

    // TODO: implement mapEventToState
  }
}
