package taller6_3_5;

import java.util.Scanner;

public class Taller6_3_5 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        MenuPrincipal menu = new MenuPrincipal();

        boolean salir = false;

        while (!salir) {
            menu.mostrarMenu();
            int opcion = scanner.nextInt();

            switch (opcion) {
                case 1:
                    System.out.print("Ingrese su nombre: ");
                    String nombre = scanner.next();
                    menu.capturarNombre(nombre);
                    break;
                case 2:
                    menu.saludarPersona();
                    break;
                case 3:
                    salir = true;
                    break;
                default:
                    System.out.println("Opción inválida, intente nuevamente.");
                    break;
            }
        }
        scanner.close();
    }
}

class MenuPrincipal {
    private String nombre;

    public void mostrarMenu() {
        System.out.println("Menú de usuario:");
        System.out.println("1. Capturar nombre");
        System.out.println("2. Saludar persona");
        System.out.println("3. Salir del sistema");
        System.out.print("Ingrese una opción: ");
    }

    public void capturarNombre(String nombre) {
        this.nombre = nombre;
        System.out.println("Nombre capturado: " + this.nombre);
    }

    public void saludarPersona() {
        if (this.nombre != null) {
            System.out.println("¡Hola " + this.nombre + "!");
        } else {
            System.out.println("Primero capture su nombre antes de saludar.");
        }
    }
}
