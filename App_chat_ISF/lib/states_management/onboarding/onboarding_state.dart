//@dart=2.3
import 'package:chat/chat.dart';
import 'package:equatable/equatable.dart';

abstract class OnboardingState extends Equatable {}

class OnboardingInitial extends OnboardingState {
  @override
  List<Object> get props => [];
}

class Loading extends OnboardingState {
  @override
  List<Object> get props => [];
}

class OnboardingSuccess extends OnboardingState {
  //final User user;
  final User _user;

    OnboardingSuccess(this._user);
    //OnboardingSuccess(this.user);

  @override
    List<Object> get props => [_user];
 // List<Object> get props => [user];
}
