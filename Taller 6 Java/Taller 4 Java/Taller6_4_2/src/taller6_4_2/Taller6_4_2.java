package taller6_4_2;

/**
 *
 * @author User
 */
import java.util.Random;

public class Taller6_4_2 {
    public static void main(String[] args) {
        int[] numeros = new int[20];
        Random rand = new Random();

        // Llenar el arreglo con números aleatorios entre 1 y 100
        for (int i = 0; i < numeros.length; i++) {
            numeros[i] = rand.nextInt(100) + 1;
        }

        // Imprimir los números pares e impares
        System.out.print("Números pares: ");
        for (int num : numeros) {
            if (num % 2 == 0) {
                System.out.print(num + " ");
            }
        }
        System.out.println();

        System.out.print("Números impares: ");
        for (int num : numeros) {
            if (num % 2 != 0) {
                System.out.print(num + " ");
            }
        }
        System.out.println("");
    }
}