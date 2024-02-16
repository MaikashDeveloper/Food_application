part of 'authentication_bloc.dart';

enum AuthenticationStatus { _authenticated, _unauthenticatde, _unknow }

class AuthenticationState extends Equatable {
  const AuthenticationState._({
    this.status = AuthenticationStatus._unknow,
    this.user,
  });

  final AuthenticationStatus status;
  final MyUser? user;
  //final MyUser _used;

  const AuthenticationState.unKnow() : this._();

  const AuthenticationState.authenticated(MyUser myUser)
      : this._(status: AuthenticationStatus._authenticated, user: myUser);

  const AuthenticationState.unauthenticated()
      : this._(status: AuthenticationStatus._unauthenticatde);

  @override
  List<Object> get props => [
        status,
        // user,
      ];
}
