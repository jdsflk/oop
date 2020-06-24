import 'Model/FlyingVehicle.dart';
import 'Model/Vehicle.dart';
import 'Repositories/FlyingVehicleRepo.dart';
import 'Repositories/VehicleRepo.dart';
import 'Services/FlyingVehicleService.dart';
import 'Services/VehicleService.dart';

main(){
  FlyingVehicleService fs = FlyingVehicleService();
  VehicleService vs = VehicleService();

  VehicleRepo vr = VehicleRepo(vs);
  FlyingVehicleRepo fr = FlyingVehicleRepo(fs);
  
  Vehicle v = vr.c.create("red");
  vr.c.read(v);
  vr.c.update(v, "blue");
  vr.c.delete(v);

  print("\n");
  
  FlyingVehicle f = fr.f.create("white");
  fr.f.read(f);
  fr.f.update(f, "grey");
  fr.f.delete(f);
}