import '../models/vehicle.dart';
import '../services/vehicle_service.dart';

class VehicleRepo{

  final VehicleService c;
  
  VehicleRepo(this.c);

  void update(Vehicle v){
    c.update(v);
  }
  void delete(Vehicle v){
    c.delete(v);
  }
  void create(Vehicle v){
    c.create(v);
  }
  void read(Vehicle v){
    c.read(v);
  }
}