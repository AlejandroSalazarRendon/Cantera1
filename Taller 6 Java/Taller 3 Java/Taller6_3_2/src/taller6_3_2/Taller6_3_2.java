/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package taller6_3_2;

public class Taller6_3_2 {
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
        int i = 1;
        while (i <= altura) {
            int j = 1;
            while (j <= altura - i) {
                System.out.print(" ");
                j++;
            }
            int k = 1;
            while (k <= i) {
                System.out.print("*");
                k++;
            }
            System.out.println();
            i++;
        }
    }
}
