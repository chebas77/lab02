class BicicletaSmart {
  String marca;
  String modelo;
  int anio;
  bool tieneGPS;
  bool tieneMonitorRitmo;

  // Constructor principal
  BicicletaSmart(this.marca, this.modelo, this.anio, this.tieneGPS, this.tieneMonitorRitmo);

  // Constructor nombrado: Bicicleta básica
  BicicletaSmart.basica(this.marca, this.modelo, this.anio)
      : tieneGPS = false,
        tieneMonitorRitmo = false;

  // Constructor nombrado: Bicicleta premium
  BicicletaSmart.premium(this.marca, this.modelo, this.anio)
      : tieneGPS = true,
        tieneMonitorRitmo = true;

  // Método para imprimir detalles
  void descripcion() {
    print("Bicicleta $marca $modelo ($anio) | GPS: $tieneGPS | Monitor Ritmo: $tieneMonitorRitmo");
  }
}

void main() {
  // Instancia básica
  var bici1 = BicicletaSmart.basica("Giant", "Escape 3", 2023);
  bici1.descripcion();

  // Instancia premium
  var bici2 = BicicletaSmart.premium("Trek", "Domane SL", 2024);
  bici2.descripcion();
}
