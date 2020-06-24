import '../models/vehicle.dart';

class VehicleService{
  void create(Vehicle v){
    print("Added new ${v.colour} vehicle.");;
  }

  void delete(Vehicle v) {
    print("The ${v.colour} vehicle was deleted.");
  }

  void read(Vehicle v) {
    print("The Vehicle is ${v.colour}");
  }

  void update(Vehicle v) {
    print("The vehicle's color was updated.");
  }
  
}