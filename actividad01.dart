class Drone {
  String id;
  double capacidadCargaKg;
  int autonomiaMin;

  // Constructor
  Drone(this.id, this.capacidadCargaKg, this.autonomiaMin);

  // Método
  void mostrarFicha() {
    print("Drone $id | Carga: ${capacidadCargaKg}kg | Autonomía: ${autonomiaMin}min");
  }
}

class DroneMaritimo extends Drone {
  String resistenciaCorrosion;

  // Constructor con super
  DroneMaritimo(String id, double capacidadCargaKg, int autonomiaMin, this.resistenciaCorrosion)
      : super(id, capacidadCargaKg, autonomiaMin);

  // Sobrescritura del método
  @override
  void mostrarFicha() {
    print("Drone $id | Carga: ${capacidadCargaKg}kg | Autonomía: ${autonomiaMin}min | Resistencia: $resistenciaCorrosion");
  }
}

void main() {
  // Drone normal
  var d1 = Drone("D-001", 5.0, 40);
  d1.mostrarFicha();

  // Drone marítimo
  var d2 = DroneMaritimo("M-010", 8.0, 60, "Alta");
  d2.mostrarFicha();
}
