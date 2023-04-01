package taller6_4_1;

/**
 *
 * @author User
 */

import java.util.Scanner;

public class Taller6_4_1 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int[] vector = new int[5];
        
        for (int i = 0; i < vector.length; i++) {
            System.out.print("Ingrese un valor para la posición " + i + ": ");
            vector[i] = scanner.nextInt();
        }
        
        for (int i = 0; i < vector.length; i++) {
            System.out.println("[" + i + "] = " + vector[i]);
        }
    }
}