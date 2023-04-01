package taller_6_2_10;

import java.util.Scanner;

class Cuenta {
    private String titular;
    private double cantidad;

    public Cuenta(String titular, double cantidad) {
        this.titular = titular;
        this.cantidad = cantidad;
    }

    public void ingreso(double cantidad) {
        if (cantidad > 0) {
            this.cantidad += cantidad;
            System.out.println("Ingreso realizado. Nuevo saldo: " + this.cantidad);
        } else {
            System.out.println("Error: la cantidad ingresada debe ser mayor que cero.");
        }
    }

    public void retiro(double cantidad) {
        if (cantidad <= this.cantidad) {
            this.cantidad -= cantidad;
            System.out.println("Retiro realizado. Nuevo saldo: " + this.cantidad);
        } else {
            System.out.println("Error: fondos insuficientes.");
        }
    }

    public void consulta() {
        System.out.println("Titular de la cuenta: " + this.titular);
        System.out.println("Saldo actual: " + this.cantidad);
    }
}

public class Taller_6_2_10 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Ingrese el nombre del titular de la cuenta: ");
        String titular = scanner.nextLine();
        System.out.print("Ingrese la cantidad inicial en la cuenta: ");
        double cantidad = scanner.nextDouble();
        Cuenta cuenta = new Cuenta(titular, cantidad);
        int opcion = 0;
        while (opcion != 4) {
            System.out.println("Seleccione una opción:");
            System.out.println("1. Realizar un ingreso.");
            System.out.println("2. Realizar un retiro.");
            System.out.println("3. Consultar saldo.");
            System.out.println("4. Salir.");
            opcion = scanner.nextInt();
            switch (opcion) {
                case 1:
                    System.out.print("Ingrese la cantidad a depositar: ");
                    double ingreso = scanner.nextDouble();
                    cuenta.ingreso(ingreso);
                    break;
                case 2:
                    System.out.print("Ingrese la cantidad a retirar: ");
                    double retiro = scanner.nextDouble();
                    cuenta.retiro(retiro);
                    break;
                case 3:
                    cuenta.consulta();
                    break;
                case 4:
                    break;
                default:
                    System.out.println("Opción inválida.");
                    break;
            }
        }
        scanner.close();
        System.out.println("Gracias por utilizar nuestro servicio.");
    }
}
