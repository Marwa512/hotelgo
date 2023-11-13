abstract class  HotelStates {}

class HotelInitialState extends  HotelStates {}

class GetHotelSuccessState extends  HotelStates {}

class GetHotelErrorState extends  HotelStates {
  final String error;

  GetHotelErrorState(this.error); 
  
}

 
 