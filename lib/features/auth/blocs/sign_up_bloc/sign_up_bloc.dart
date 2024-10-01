import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  SignUpBloc() : super(SignUpInitial()) {
    on<SignUpRequested>(_onSignUpRequested);
  }

  Future<void> _onSignUpRequested(SignUpRequested event, Emitter<SignUpState> emit) async {
    emit(SignUpProcess());

    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
      emit(SignUpSuccess(userCredential.user!));
    } catch (e) {
      emit(SignUpFailure(e.toString()));
    }
  }
}
