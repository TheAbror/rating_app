import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rating_app/core/bloc_progress/bloc_progress/bloc_progress.dart';

part 'home_state.dart';

class HomeBloc extends Cubit<HomeState> {
  HomeBloc() : super(HomeState.initial());

  void changeBrightness() {
    emit(state.copyWith(isDark: !state.isDark));
  }
}
