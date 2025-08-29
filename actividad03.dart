// Clase abstracta
abstract class Trabajador {
  String nombre;
  double salarioMensual;

  Trabajador(this.nombre, this.salarioMensual);

  double calcularBonificacion(); // método abstracto

  void mostrarDatos() {
    print("Nombre: $nombre | Salario: $salarioMensual");
  }
}

// Subclase Administrador de Sistemas
class AdministradorSistemas extends Trabajador {
  AdministradorSistemas(String nombre, double salarioMensual)
      : super(nombre, salarioMensual);

  @override
  double calcularBonificacion() => salarioMensual * 0.18;
}

// Subclase Técnico de Soporte
class TecnicoSoporte extends Trabajador {
  TecnicoSoporte(String nombre, double salarioMensual)
      : super(nombre, salarioMensual);

  @override
  double calcularBonificacion() => salarioMensual * 0.10;
}

void main() {
  // Lista polimórfica de trabajadores
  List<Trabajador> personal = [
    AdministradorSistemas("Carlos", 5000),
    TecnicoSoporte("Ana", 3000),
  ];

  // Iterar con polimorfismo
  for (var t in personal) {
    t.mostrarDatos();
    print("Bonificación: ${t.calcularBonificacion()}\n");
  }
}
