package taller6_3_7;

import java.util.Scanner;

import java.util.ArrayList;
import java.util.Scanner;

class Vehiculo {
    private String placa;
    private String marca;
    private String nombreCliente;
    private String telefonoCliente;

    public Vehiculo(String placa, String marca, String nombreCliente, String telefonoCliente) {
        this.placa = placa;
        this.marca = marca;
        this.nombreCliente = nombreCliente;
        this.telefonoCliente = telefonoCliente;
    }

    public String getPlaca() {
        return placa;
    }

    public String getMarca() {
        return marca;
    }

    public String getNombreCliente() {
        return nombreCliente;
    }

    public String getTelefonoCliente() {
        return telefonoCliente;
    }
}

class Parqueadero {
    private ArrayList<Vehiculo> vehiculos;
    private int capacidadMaxima;

    public Parqueadero(int capacidadMaxima) {
        this.capacidadMaxima = capacidadMaxima;
        this.vehiculos = new ArrayList<Vehiculo>();
    }

    public boolean ingresarVehiculo(Vehiculo vehiculo) {
        if (vehiculos.size() < capacidadMaxima) {
            vehiculos.add(vehiculo);
            return true;
        } else {
            return false;
        }
    }

    public boolean retirarVehiculo(String placa) {
        for (int i = 0; i < vehiculos.size(); i++) {
            if (vehiculos.get(i).getPlaca().equals(placa)) {
                vehiculos.remove(i);
                return true;
            }
        }
        return false;
    }

    public boolean consultarVehiculo(String placa) {
        for (Vehiculo vehiculo : vehiculos) {
            if (vehiculo.getPlaca().equals(placa)) {
                return true;
            }
        }
        return false;
    }
}

public class Taller6_3_7 {
    public static void main(String[] args) {
        Parqueadero parqueadero = new Parqueadero(5);
        Scanner scanner = new Scanner(System.in);
        boolean terminar = false;

        while (!terminar) {
            System.out.println("Bienvenido al parqueadero 'El guardián'." );
            System.out.println("1. Ingresar un vehículo al parqueadero.");
            System.out.println("2. Retirar un vehículo del parqueadero.");
            System.out.println("3. Consultar si un vehículo se encuentra en el parqueadero.");
            System.out.println("4. Salir.");
            System.out.println("¿Qué desea hacer?");
            int opcion = scanner.nextInt();
            scanner.nextLine();

            switch (opcion) {
                case 1:
                    System.out.println("Ingrese la placa del vehículo:");
                    String placa = scanner.nextLine();
                    System.out.println("Ingrese la marca del vehículo:");
                    String marca = scanner.nextLine();
                    System.out.println("Ingrese el nombre completo del cliente:");
                    String nombreCliente = scanner.nextLine();
                    System.out.println("Ingrese el número de teléfono del cliente:");
                    String telefonoCliente = scanner.nextLine();
                    Vehiculo vehiculo = new Vehiculo(placa, marca, nombreCliente, telefonoCliente);
                    if (parqueadero.ingresarVehiculo(vehiculo)) {
                        System.out.println("El vehículo ha sido ingresado al parqueadero.");
                    } else {
                        System.out.println("Lo siento, el parqueadero está lleno.");
                    }
                    break;
                case 2:
                    System.out.println("Ingrese la placa del vehículo que desea retirar:");
                    placa = scanner.nextLine();
                    if (parqueadero.retirarVehiculo(placa)) {
                        System.out.println("El vehículo ha sido retirado del parqueadero.");
                    } else {
                        System.out.println("Lo siento, no se encontró un vehículo con esa placa en el parqueadero.");
                    }
                    break;
                case 3:
                    System.out.println("Ingrese la placa del vehículo que desea consultar:");
                    placa = scanner.nextLine();
                    if (parqueadero.consultarVehiculo(placa)) {
                    System.out.println("Sí, el vehículo se encuentra en el parqueadero.");
                    } else {
                    System.out.println("No, el vehículo no se encuentra en el parqueadero.");
                    }
                    break;
                case 4:
                    terminar = true;
                    break;
                    default:
                    System.out.println("Opción inválida. Por favor intente de nuevo.");
                    break;
            }
        }
scanner.close();
}
} 
