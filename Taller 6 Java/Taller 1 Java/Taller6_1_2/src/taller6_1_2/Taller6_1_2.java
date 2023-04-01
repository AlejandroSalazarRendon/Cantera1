package taller6_1_2;
/**
 *
 * @author Alejandro
 */

import java.util.Scanner;

public class Taller6_1_2 {
    private String nombre;
    private String apellido;
    private int edad;
    private double estatura;

    public void solicitarDatos() {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Introduce tu nombre: ");
        this.nombre = scanner.nextLine();
        System.out.print("Introduce tus apellidos: ");
        this.apellido = scanner.nextLine();
        System.out.print("Introduce tu edad: ");
        this.edad = scanner.nextInt();
        System.out.print("Introduce tu estatura en metros: ");
        this.estatura = scanner.nextDouble();
    }

    public void mostrarDatos() {
        System.out.println("Tu nombre completo es: " + this.nombre + " " + this.apellido);
        System.out.println("Tu edad es: " + this.edad);
        System.out.println("Tu estatura es: " + this.estatura + " metros");
        System.out.println("");
    }

    public static void main(String[] args) {
        Taller6_1_2 ne = new Taller6_1_2();
        ne.solicitarDatos();
        ne.mostrarDatos();
    }
}
