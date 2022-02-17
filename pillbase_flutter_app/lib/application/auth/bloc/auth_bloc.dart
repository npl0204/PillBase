import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/auth/i_auth_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade authFacade;

  AuthBloc({required this.authFacade}) : super(_Initial()) {
    on<AuthEvent>(
      (event, emit) async {
        await event.map(
          authCheckRequested: (e) async {
            final userOption = await authFacade.getSignedInUser();
            emit(
              userOption.fold(
                () => const AuthState.unauthenticated(),
                (a) => const AuthState.authenticated(),
              ),
            );
          },
          signedOut: (e) async {
            await authFacade.signOut();
            emit(
              const AuthState.unauthenticated(),
            );
          },
        );
      },
    );
  }
}
