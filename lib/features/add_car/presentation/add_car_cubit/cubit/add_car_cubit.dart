import 'package:clutch/features/add_car/presentation/add_car_cubit/cubit/add_car_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AddCarCubit extends Cubit<AddCarState> {
  AddCarCubit() : super(AddCarInitial());
  
}
