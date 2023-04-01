package taller6_2_2;

/**
 *
 * @author User
 */
import java.util.Scanner;

public class Taller6_2_2 {
    private int edad;

    public Taller6_2_2() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ingrese su edad: ");
        edad = sc.nextInt();
        sc.close();
    }

    public void esMayorDeEdad() {
        if (edad < 18) {
            System.out.println("Usted aún es un niño(a).");
        }
    }

    public static void main(String[] args) {
        Taller6_2_2 persona = new Taller6_2_2();
        persona.esMayorDeEdad();
    }
}
