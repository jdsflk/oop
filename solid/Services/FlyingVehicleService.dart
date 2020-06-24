import '../Model/FlyingVehicle.dart';

class FlyingVehicleService{
  FlyingVehicle create(String colour){
    FlyingVehicle f = FlyingVehicle(2000, 1000, 10, colour);
    return f;
  }

  void delete(FlyingVehicle f) {
    print("The ${f.colour} FlyingVehicle was deleted.");
  }

  void read(FlyingVehicle f) {
    print("The FlyingVehicle is ${f.colour}");
  }

  void update(FlyingVehicle f, String newColour) {
    f.colour = newColour;
    print("The FlyingVehicle's new colour is ${newColour}");
  }
}