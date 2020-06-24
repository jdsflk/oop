import '../Model/Vehicle.dart';

class VehicleService{
  Vehicle create(String colour){
    Vehicle v = Vehicle(200, 4, 4, colour, false);
    return v;
  }

  void delete(Vehicle v) {
    print("The ${v.colour} vehicle was deleted.");
  }

  void read(Vehicle v) {
    print("The Vehicle is ${v.colour}");
  }

  void update(Vehicle v, String newColour) {
    v.colour = newColour;
    print("The vehicle's new colour is ${newColour}");
  }
  
}