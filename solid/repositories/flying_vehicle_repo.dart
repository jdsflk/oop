import '../models/flying_vehicle.dart';
import '../services/flying_vehicle_service.dart';

class FlyingVehicleRepo{

  final FlyingVehicleService f; 
  FlyingVehicleRepo(this.f); 

  void update(FlyingVehicle v){
    f.update(v);
  }
  void delete(FlyingVehicle v){
    f.delete(v);
  }
  void create(FlyingVehicle v){
    f.create(v);
  }
  void read(FlyingVehicle v){
    f.read(v);
  }
}