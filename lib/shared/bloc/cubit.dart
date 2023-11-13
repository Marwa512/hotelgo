// ignore_for_file: depend_on_referenced_packages

 import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotelsgo/shared/bloc/states.dart';

import '../../models/hotels.dart';
import '../network/remote/dio_helper.dart';
  
 
class HotelCubit extends Cubit<HotelStates> {
  HotelCubit() : super(HotelInitialState());
  static HotelCubit get(context) => BlocProvider.of(context);
  List<Hotel> HotelModel = [];
  late String msgError;
  void getHotelData() {
    HotelModel = [];
    DioHelper.getData(url:'https://www.hotelsgo.co/test/hotels').then((value) {
    HotelModel = (value.data as List)
          .map((json) => Hotel.fromJson(json))
          .toList();
       emit(GetHotelSuccessState());
       
    }).catchError((error) {
       msgError = error.toString();
       print(error.toString());
      emit(GetHotelErrorState(msgError));
    });
  }

  
  
  
  
   
}
