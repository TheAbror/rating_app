part of 'home_bloc.dart';

class HomeState extends Equatable {
  final BlocProgress blocProgress;
  final String failureMessage;

  const HomeState({
    required this.blocProgress,
    required this.failureMessage,
  });

  factory HomeState.initial() {
    return HomeState(
      blocProgress: BlocProgress.IS_SUCCESS,
      failureMessage: '',
    );
  }

  HomeState copyWith({
    BlocProgress? blocProgress,
    String? failureMessage,
  }) {
    return HomeState(
      blocProgress: blocProgress ?? this.blocProgress,
      failureMessage: failureMessage ?? this.failureMessage,
    );
  }

  @override
  List<Object?> get props => [
        blocProgress,
        failureMessage,
      ];
}
