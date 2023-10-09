import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_car_state.dart';

class AddCarCubit extends Cubit<AddCarState> {
  AddCarCubit() : super(AddCarInitial());
}
