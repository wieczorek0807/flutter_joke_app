import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/datasources/auth_data_source.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitialState());

  void signIn() async {
    try {
      final result = await AuthDataSource().signInWithGooglenew();
      if (result == null) {
        emit(AuthSuccessState());
      } else {
        emit(AuthErrorState());
      }
      // emit(AuthSuccessState());
    } catch (e) {
      print('error: $e');
      emit(AuthErrorState());
    }
  }
}
