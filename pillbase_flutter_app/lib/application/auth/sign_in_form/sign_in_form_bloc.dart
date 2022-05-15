import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade authFacade;

  SignInFormBloc({required this.authFacade})
      : super(SignInFormState.initial()) {
    on<SignInFormEvent>((event, emit) async {
      await event.map(
        emailChanged: (e) {
          emit(
            state.copyWith(
              emailAddress: EmailAddress(e.emailString),
              authFailureOrSuccessOption: none(),
            ),
          );
        },
        passwordChanged: (e) {
          emit(
            state.copyWith(
              password: Password(e.passwordString),
              authFailureOrSuccessOption: none(),
            ),
          );
        },
        registerWithEmailAndPasswordPressed: (e) async {
          final isEmailValid = state.emailAddress.isValid();
          final isPasswordValid = state.password.isValid();
          Either<AuthFailure, Unit>? failureOrSuccess;

          if (isEmailValid && isPasswordValid) {
            emit(
              state.copyWith(
                isSubmitting: true,
                authFailureOrSuccessOption: none(),
              ),
            );
            failureOrSuccess = await authFacade.registerWithEmailAndPassword(
              emailAddress: state.emailAddress,
              password: state.password,
            );
          }
          emit(
            state.copyWith(
              showErrorMessage: true,
              isSubmitting: false,
              authFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          );
        },
        signInWithEmailAndPasswordPressed: (e) async {
          final isEmailValid = state.emailAddress.isValid();
          final isPasswordValid = state.password.isValid();

          Either<AuthFailure, Unit>? failureOrSuccess;

          if (isEmailValid && isPasswordValid) {
            emit(
              state.copyWith(
                isSubmitting: true,
                authFailureOrSuccessOption: none(),
              ),
            );
            failureOrSuccess = await authFacade.signInWithEmailAndPassword(
              emailAddress: state.emailAddress,
              password: state.password,
            );
          }
          emit(
            state.copyWith(
              showErrorMessage: true,
              isSubmitting: false,
              authFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          );
        },
      );
    });
  }
}
