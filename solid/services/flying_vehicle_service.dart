import '../models/flying_vehicle.dart';

class FlyingVehicleService{
  void create(FlyingVehicle f){
    print("Added new ${f.colour} flying vehicle.");
  }

  void delete(FlyingVehicle f) {
    print("The ${f.colour} FlyingVehicle was deleted.");
  }

  void read(FlyingVehicle f) {
    print("The FlyingVehicle is ${f.colour}");
  }

  void update(FlyingVehicle f) {
    print("The colour of the flying vehicle was updated.");
  }
}