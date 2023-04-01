package taller6_2_3;

/**
 *
 * @author User
 */
import java.util.Scanner;

public class Taller6_2_3 {
    private String nombre;
    private String apellidos;
    private int edad;

    public Taller6_2_3(String nombre, String apellidos, int edad) {
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.edad = edad;
    }

    public void verificarEdad() {
        if (edad >= 18) {
            System.out.println(nombre + " " + apellidos + ", usted es mayor de edad, por lo tanto puede entrar a la fiesta.");
        } else {
            System.out.println(nombre + " " + apellidos + ", usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devuélvase a su casa.");
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Ingrese su nombre: ");
        String nombre = scanner.nextLine();
        System.out.print("Ingrese sus apellidos: ");
        String apellidos = scanner.nextLine();
        System.out.print("Ingrese su edad: ");
        int edad = scanner.nextInt();

        Taller6_2_3 persona = new Taller6_2_3(nombre, apellidos, edad);
        persona.verificarEdad();
    }
}

