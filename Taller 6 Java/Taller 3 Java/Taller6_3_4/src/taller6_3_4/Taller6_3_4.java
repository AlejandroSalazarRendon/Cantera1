/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package taller6_3_4;

import java.util.Scanner;

public class Taller6_3_4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ingrese un número para mostrar su tabla de multiplicar: ");
        int numero = sc.nextInt();
        Tabla tabla = new Tabla(numero);
        tabla.mostrarTabla();
        sc.close();
    }
}

class Tabla {
    private int numero;

    public Tabla(int numero) {
        this.numero = numero;
    }

    public void mostrarTabla() {
        for (int i = 1; i <= 10; i++) {
            System.out.printf("%d * %d = %d%n", i, numero, i * numero);
        }
    }
}
