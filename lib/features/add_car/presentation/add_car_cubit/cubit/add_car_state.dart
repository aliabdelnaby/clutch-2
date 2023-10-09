class AddCarState {}

final class AddCarInitial extends AddCarState {}

final class AddCarLoadingState extends AddCarState {}

final class AddCarSuccessgState extends AddCarState {}

final class AddCarFailuregState extends AddCarState {
  final String errMessage;

  AddCarFailuregState({required this.errMessage});
}

