import 'models/passenger_plane.dart';
import 'models/bus.dart';
import 'models/flying_vehicle.dart';
import 'models/vehicle.dart';
import 'repositories/flying_vehicle_repo.dart';
import 'repositories/vehicle_repo.dart';
import 'services/flying_vehicle_service.dart';
import 'services/vehicle_service.dart';

main(){
  
  FlyingVehicleService flyingservice = FlyingVehicleService();
  VehicleService vehichleservice = VehicleService();
  
    VehicleRepo vehiclerepo = VehicleRepo(vehichleservice);
    FlyingVehicleRepo flyingrepo = FlyingVehicleRepo(flyingservice);
    
    Vehicle vehicle = Vehicle(500, 4, 4, "red", true);
    Vehicle bus = Bus(500, 4, 4, "red", true, 25); 

    FlyingVehicle x = PassengerPlane(500, 2, 2, "colour", 2, 2);

    vehiclerepo.read(vehicle);
    vehiclerepo.update(vehicle);
    vehiclerepo.delete(vehicle);
    vehiclerepo.create(vehicle);
  
    print("\n");
    
    FlyingVehicle flyingvehicle = FlyingVehicle(1000, 500, 10, "skyblue");

    flyingrepo.create(flyingvehicle);
    flyingrepo.read(flyingvehicle);
    flyingrepo.update(flyingvehicle);
    flyingrepo.delete(flyingvehicle);
  }
