import 'vehicle.dart';

class Bus extends Vehicle{
  int maxPassengers;

  Bus(int power, int seats, int wheels, String colour, bool hybryd, this.maxPassengers)
   : super(power, seats, wheels, colour, hybryd);

} 