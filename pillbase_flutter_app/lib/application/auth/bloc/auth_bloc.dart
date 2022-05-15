import 'package:bloc/bloc.dart';
import '../../../../domain/auth/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/notifications/i_notification_repostiory.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade authFacade;
  final INotificationRepository notificationRepository;

  AuthBloc({
    required this.authFacade,
    required this.notificationRepository,
  }) : super(const AuthState.initial()) {
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
            notificationRepository.cancelAllNotifications();
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
