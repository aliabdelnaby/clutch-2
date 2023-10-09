class AddCarState {}

final class AddCarInitial extends AddCarState {}

final class AddCarLoadingState extends AddCarState {}

final class AddCarSuccessgState extends AddCarState {}

final class AddCarFailureState extends AddCarState {
  final String errMessage;

  AddCarFailureState({required this.errMessage});
}

