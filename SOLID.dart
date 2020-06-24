class Car{ //please structure the project into different files for each class, and in different folder for the layers.
  int power;
  int seats;
  int wheels;
  String colour;
  bool hybryd;

  Car(this.power, this.seats, this.wheels, this.colour, this.hybryd);
}

class Bus extends Car{ //bus is not a car. Car should be Vehicle
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

abstract class CRUD{. //CRUD is not a good Class name. This should be some kind of Service, example: BaseService
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

class CarService extends CRUD{} // make it so that the print statements include the color of the just modified vehicle. Example: print('Something ${vehicle.colour} was created')


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

class Repo{ //"Repo" is not specific name enough. Please have two repos for the two base classes

  FlyingService f; //these should be final fields
  CarService c;
  
  Repo(this.f, this.c); //congratz on the DI

  void doSth(){ //this should be the main method. The Repo doesn't do sth, until it's instructed to di sth
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
//there are no actual vehicles in this project. Please create some instances of attack helicopters and stuff to call the service methods on
  Repo r = Repo(f, c); 
  r.doSth();
}
