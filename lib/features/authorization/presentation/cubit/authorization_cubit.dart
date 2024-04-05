import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/datasources/auth_data_source.dart';

part 'authorization_state.dart';
part 'authorization_cubit.freezed.dart';

class AuthorizationCubit extends Cubit<AuthorizationState> {
  AuthorizationCubit() : super(const AuthorizationState.initial());

  void signIn() async {
    try {
      emit(const AuthorizationState.loading());
      final result = await AuthDataSource().signInWithGooglenew();
      if (result != null) {
        emit(const AuthorizationState.success());
      } else {
        emit(const AuthorizationState.initial());
      }
    } catch (e) {
      emit(AuthorizationState.error(e.toString()));
    }
  }

  void signOut() async {
    AuthDataSource().signOut();
    emit(const AuthorizationState.initial());
  }
}
