class Car{
  int power;
  int seats;
  int wheels;
  String colour;
  bool hybryd;

  Car(this.power, this.seats, this.wheels, this.colour, this.hybryd);
}

class Bus extends Car{
  int maxPassengers;

  Bus(int power, int seats, int wheels, String colour, bool hybryd,
   this.maxPassengers) : super(power, seats, wheels, colour, hybryd);

} 

class Lorry extends Car{
  int maxWeight;
  String typeOfTrailer;

  Lorry(int power, int seats, int wheels, String colour, bool hybryd,
   this.maxWeight, this.typeOfTrailer) : super(power, seats, wheels, colour, hybryd);

}

abstract class CRUD{
  void create(){
    print("Created!");
  }

  void read(){
    print("Read!");
  }

  void update(){
    print("Update!");
  }

  void delete(){
    print("Deleted!");
  }
}

class CarService extends CRUD{}


class FlyingVehicle{
  int maxAlt;
  int power;
  bool hasWheel;
  int crewCount;

  FlyingVehicle(this.maxAlt, this.power, this.hasWheel, this.crewCount);
}

class ApacheHelicopter extends FlyingVehicle{
  int numberOfGuns;
  bool hasRockets;

  ApacheHelicopter(int maxAlt, int power, bool hasWheel, int crewCount,
  this.numberOfGuns, this.hasRockets) : super(maxAlt, power, hasWheel, crewCount);

}

class PassengerPlane extends FlyingVehicle{
  int maxPass;
  int numberOfEngines;
  PassengerPlane(int maxAlt, int power, bool hasWheel, int crewCount,
  this.maxPass, this.numberOfEngines) : super(maxAlt, power, hasWheel, crewCount);
}

class FlyingService extends CRUD{}

class Repo{

  FlyingService f;
  CarService c;
  
  Repo(this.f, this.c);

  void doSth(){
   f.create();
   f.delete();
   print("\n");
   c.create();
   c.update();
   c.delete();
 }
}

main(){
  FlyingService f = FlyingService();
  CarService c = CarService();

  Repo r = Repo(f, c);
  r.doSth();
}