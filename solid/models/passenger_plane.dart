import 'flying_vehicle.dart';

class PassengerPlane extends FlyingVehicle{
  int maxPass;
  int numberOfEngines;
  PassengerPlane(int maxAlt, int power, int crewCount, String colour,
  this.maxPass, this.numberOfEngines) : super(maxAlt, power, crewCount, colour);
}