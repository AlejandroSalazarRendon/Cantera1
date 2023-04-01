package taller6_1_4;

/**
 *
 * @author Alejandro
 */
import java.util.Scanner;

public class Taller6_1_4 {
    private String ciudad;
    private String pais;

    public void solicitarDatos() {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Introduce el nombre de la ciudad capital: ");
        this.ciudad = scanner.nextLine();
        System.out.print("Introduce el nombre del país: ");
        this.pais = scanner.nextLine();
    }

    public void mostrarDatos() {
        System.out.println("La ciudad " + this.ciudad + ", es la capital del país " + this.pais + ".");
    }

    public static void main(String[] args) {
        Taller6_1_4 cap = new Taller6_1_4();
        cap.solicitarDatos();
        cap.mostrarDatos();
    }
}