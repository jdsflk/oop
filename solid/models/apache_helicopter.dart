import 'flying_vehicle.dart';

class ApacheHelicopter extends FlyingVehicle{
  int numberOfGuns;
  bool hasRockets;

  ApacheHelicopter(int maxAlt, int power, int crewCount, String colour,
  this.numberOfGuns, this.hasRockets) : super(maxAlt, power, crewCount, colour);
}