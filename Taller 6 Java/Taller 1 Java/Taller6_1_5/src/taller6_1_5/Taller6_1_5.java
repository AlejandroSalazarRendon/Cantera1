package taller6_1_5;

/**
 *
 * @author Alejandro
 */
import java.util.Scanner;

public class Taller6_1_5 {
    private String nombre;
    private int edad;
    private String tipo;
    private String nombreCompleto;

    public  void Mascota() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ingrese el nombre de su mascota: ");
        this.nombre = sc.nextLine();
        System.out.print("Ingrese la edad de su mascota: ");
        this.edad = sc.nextInt();
        sc.nextLine();
        System.out.print("Ingrese el tipo de su mascota: ");
        this.tipo = sc.nextLine();
        System.out.print("Ingrese su nombre completo: ");
        this.nombreCompleto = sc.nextLine();
        sc.close();
    }

    public void imprimirDatos() {
        System.out.println(nombre + " es un(a) " + tipo + ", el cual, tiene " + edad +
                " año(s) de edad y " + nombreCompleto + " es actualmente su dueño(a).");
    }

    public static void main(String[] args) {
        Taller6_1_5 miMascota = new Taller6_1_5();
        miMascota.Mascota();
        miMascota.imprimirDatos();
    }
}





