/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package taller6_3_3;

public class Taller6_3_3 {
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
        int espacios = altura - 1;
        int asteriscos = 1;
        do {
            int j = 1;
            while (j <= espacios) {
                System.out.print(" ");
                j++;
            }
            int k = 1;
            while (k <= asteriscos) {
                System.out.print("*");
                k++;
            }
            System.out.println();
            espacios--;
            asteriscos += 2;
            i++;
        } while (i <= altura);
        
        i = 1;
        do {
            int j = 1;
            while (j <= altura - 3) {
                System.out.print(" ");
                j++;
            }
            int k = 1;
            while (k <= 3) {
                System.out.print("*");
                k++;
            }
            System.out.println();
            i++;
        } while (i <= 2);
        System.out.println("      *****   ");
    }
}

