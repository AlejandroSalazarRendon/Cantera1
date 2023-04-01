package taller6_2_1;
import java.util.Scanner;
/**
 *
 * @author User
 */

public class Taller6_2_1 {

    private int edad;

    public Taller6_2_1() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ingrese su edad: ");
        edad = sc.nextInt();
        sc.close();
    }

    public void esMayorDeEdad() {
        if (edad >= 18) {
            System.out.println("Usted es mayor de edad.");
        }
    }

    public static void main(String[] args) {
        Taller6_2_1 persona = new Taller6_2_1();
        persona.esMayorDeEdad();
    }
}


