import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pillbase_flutter_app/domain/auth/i_auth_facade.dart';
import 'package:pillbase_flutter_app/domain/auth/value_objects.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade authFacade;

  SignInFormBloc({required this.authFacade}) : super(_Initial()) {
    on<SignInFormEvent>((event, emit) async {
      await event.map(
          started: (e) {},
          registerWithEmailAndPasswordPressed: (e) async {
            await authFacade.registerWithEmailAndPassword(
              emailAddress: EmailAddress('email@address.com'),
              password: Password('password'),
            );
          });
    });
  }
}
