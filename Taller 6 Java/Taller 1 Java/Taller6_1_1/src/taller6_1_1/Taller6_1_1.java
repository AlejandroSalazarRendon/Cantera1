package taller6_1_1;
/**
 *
 * @author Alejandro
 */

import java.util.Scanner;

public class Taller6_1_1 {
    private String nombre;
    private String apellido;

    public void solicitarDatos() {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Introduce tu nombre: ");
        this.nombre = scanner.nextLine();
        System.out.print("Introduce tus apellidos: ");
        this.apellido = scanner.nextLine();
    }

    public void mostrarDatos() {
        System.out.println("Tu nombre completo es: " + this.nombre + " " + this.apellido);
    }

    public static void main(String[] args) {
        Taller6_1_1 n = new Taller6_1_1();
        n.solicitarDatos();
        n.mostrarDatos();
    }
}
