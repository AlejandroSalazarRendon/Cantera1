/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package taller6_3_1;

/**
 *
 * @author User
 */

public class Taller6_3_1 {
    public static void main(String[] args) {
        int altura = 10;
        Dibujo dibujo = new Dibujo(altura);
        dibujo.dibujar();
    }
}

class Dibujo {
    private int altura;

    public Dibujo(int altura) {
        this.altura = altura;
    }

    public void dibujar() {
        for (int i = 1; i <= altura; i++) {
            for (int j = 1; j <= i; j++) {
                System.out.print("*");
            }
            System.out.println();
        }
    }
}

