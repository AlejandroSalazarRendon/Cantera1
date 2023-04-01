/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package taller6_4_5;

/**
 *
 * @author User
 */
import java.util.Scanner;

public class Taller6_4_5 {
    private int[][] matriz1;
    private int k;
    private int l;

    public Taller6_4_5() {
        matriz1 = new int[10][10];
        k = 1;
        l = 1;
    }

    public void llenarMatriz() {
        for (int i = 0; i < 10; i++) {
            for (int j = 0; j < 10; j++) {
                matriz1[i][j] = k * l;
                l++;
            }
            l = 1;
            k++;
        }
    }

    public void imprimirMatriz() {
        k = 1;
        l = 1;
        System.out.println(" |     0    | |    1     | |    2     | |    3     | |    4     | |    5     | |    6     | |    7     | |    8     | |    9       |");
        for (int i = 0; i < 10; i++) {
            for (int j = 0; j < 10; j++) {
                System.out.print(" |" + l + "*" + k + " = " + matriz1[i][j] + "   |");
                l++;
            }
            System.out.println("");
            k++;
            l = 1;
        }
        System.out.println("");
    }

    public void imprimirElemento(int fila, int columna) {
        System.out.println(matriz1[fila][columna]);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Taller6_4_5 multiplicar = new Taller6_4_5();
        multiplicar.llenarMatriz();
        multiplicar.imprimirMatriz();
        System.out.print("Inserte la fila (iniciando desde 0) : ");
        int capturaUno = Integer.parseInt(scanner.nextLine());
        System.out.print("Inserte la columna (iniciando desde 0): ");
        int capturaDos = Integer.parseInt(scanner.nextLine());
        multiplicar.imprimirElemento(capturaUno, capturaDos);
    }
}