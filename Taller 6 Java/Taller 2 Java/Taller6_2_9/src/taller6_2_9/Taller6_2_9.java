/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package taller6_2_9;
import java.util.Scanner;
/**
 *
 * @author User
 */
public class Taller6_2_9 {
    private Scanner scanner;

    public Taller6_2_9() {
        scanner = new Scanner(System.in);
    }
    
    public static void main(String[] args) {
        Taller6_2_9 figuraGeometrica = new Taller6_2_9();
        figuraGeometrica.calcularArea();
    }

    public void calcularArea() {
        int opcion = mostrarMenu();
        switch (opcion) {
            case 1:
                calcularAreaRectangulo();
                break;
            case 2:
                calcularAreaTriangulo();
                break;
            case 3:
                calcularAreaTrapecio();
                break;
            default:
                System.out.println("Opción inválida");
        }
    }

    private int mostrarMenu() {
        System.out.println("Seleccione la figura geométrica:");
        System.out.println("1. Rectángulo");
        System.out.println("2. Triángulo");
        System.out.println("3. Trapecio");
        return scanner.nextInt();
    }

    private void calcularAreaRectangulo() {
        System.out.print("Ingrese la base del rectángulo: ");
        double base = scanner.nextDouble();
        System.out.print("Ingrese la altura del rectángulo: ");
        double altura = scanner.nextDouble();
        double area = base * altura;
        System.out.println("El área del rectángulo es: " + area);
    }

    private void calcularAreaTriangulo() {
        System.out.print("Ingrese la base del triángulo: ");
        double base = scanner.nextDouble();
        System.out.print("Ingrese la altura del triángulo: ");
        double altura = scanner.nextDouble();
        double area = (base * altura) / 2;
        System.out.println("El área del triángulo es: " + area);
    }

    private void calcularAreaTrapecio() {
        System.out.print("Ingrese la base mayor del trapecio: ");
        double baseMayor = scanner.nextDouble();
        System.out.print("Ingrese la base menor del trapecio: ");
        double baseMenor = scanner.nextDouble();
        System.out.print("Ingrese la altura del trapecio: ");
        double altura = scanner.nextDouble();
        double area = ((baseMayor + baseMenor) * altura) / 2;
        System.out.println("El área del trapecio es: " + area);
    }
}


    
