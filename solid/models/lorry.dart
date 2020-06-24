import 'Vehicle.dart';

class Lorry extends Vehicle{
  int maxWeight;
  String typeOfTrailer;

  Lorry(int power, int seats, int wheels, String colour, bool hybryd,
   this.maxWeight, this.typeOfTrailer) : super(power, seats, wheels, colour, hybryd);

}