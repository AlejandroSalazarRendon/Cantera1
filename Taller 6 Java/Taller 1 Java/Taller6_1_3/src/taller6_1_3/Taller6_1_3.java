package taller6_1_3;

/**
 *
 * @author Alejandro
 */

import java.util.Scanner;

public class Taller6_1_3 {
    private String nombre;
    private String apellido;
    private String nombrePadre;
    private String apellidoPadre;
    private String nombreMadre;
    private String apellidoMadre;

    public void solicitarDatos() {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Introduce tu nombre: ");
        this.nombre = scanner.nextLine();
        System.out.print("Introduce tus apellidos: ");
        this.apellido = scanner.nextLine();
        System.out.print("Introduce el nombre de tu padre: ");
        this.nombrePadre = scanner.nextLine();
        System.out.print("Introduce los apellidos de tu padre: ");
        this.apellidoPadre = scanner.nextLine();
        System.out.print("Introduce el nombre de tu madre: ");
        this.nombreMadre = scanner.nextLine();
        System.out.print("Introduce los apellidos de tu madre: ");
        this.apellidoMadre = scanner.nextLine();
    }

    public void mostrarDatos() {
        System.out.println("Yo " + this.nombre + " " + this.apellido + ", soy hijo de " + this.nombreMadre + " " + this.apellidoMadre + " y " + this.nombrePadre + " " + this.apellidoPadre + ".");
    }

    public static void main(String[] args) {
        Taller6_1_3 f = new Taller6_1_3();
        f.solicitarDatos();
        f.mostrarDatos();
    }
}