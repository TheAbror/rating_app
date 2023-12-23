part of 'home_bloc.dart';

class HomeState extends Equatable {
  final bool isDark;
  final BlocProgress blocProgress;
  final String failureMessage;

  const HomeState({
    required this.isDark,
    required this.blocProgress,
    required this.failureMessage,
  });

  factory HomeState.initial() {
    return HomeState(
      isDark: false,
      blocProgress: BlocProgress.IS_SUCCESS,
      failureMessage: '',
    );
  }

  HomeState copyWith({
    bool? isDark,
    BlocProgress? blocProgress,
    String? failureMessage,
  }) {
    return HomeState(
      isDark: isDark ?? this.isDark,
      blocProgress: blocProgress ?? this.blocProgress,
      failureMessage: failureMessage ?? this.failureMessage,
    );
  }

  @override
  List<Object?> get props => [
        isDark,
        blocProgress,
        failureMessage,
      ];
}
