/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package taller6_2_6;

/**
 *
 * @author User
 */
import java.util.Scanner;

public class Taller6_2_6 {
    private String horaDeIngreso;
    private String observaciones;
    private String horaDeSalida;
    private String novedades;
    private boolean arreglos;
    private String arreglosMecanico;

    public Taller6_2_6(String horaDeIngreso, String observaciones, String horaDeSalida, String novedades, boolean arreglos, String arreglosMecanico) {
        this.horaDeIngreso = horaDeIngreso;
        this.observaciones = observaciones;
        this.horaDeSalida = horaDeSalida;
        this.novedades = novedades;
        this.arreglos = arreglos;
        this.arreglosMecanico = arreglosMecanico;
    }

    public Taller6_2_6() {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Bienvenido a el taller de motos El maquinista");
        System.out.println("-------------------------------------------");

        System.out.print("Hora de ingreso: ");
        this.horaDeIngreso = scanner.nextLine();

        System.out.print("Observaciones del cliente: ");
        this.observaciones = scanner.nextLine();

        System.out.print("Hora de salida: ");
        this.horaDeSalida = scanner.nextLine();

        System.out.print("Novedades: ");
        this.novedades = scanner.nextLine();

        System.out.print("¿Hay arreglos hechos por el mecanico? (1: Si, 2: No): ");
        int opcion = scanner.nextInt();

        if (opcion == 1) {
            scanner.nextLine(); // Consumir el salto de linea después del nextInt()
            System.out.print("Arreglos hechos por el mecanico: ");
            this.arreglosMecanico = scanner.nextLine();
            this.arreglos = true;
        } else {
            this.arreglos = false;
        }
    }

    public void mostrarInformacion() {
        System.out.println("");
        System.out.println("Hora de ingreso: " + this.horaDeIngreso);
        System.out.println("Observaciones del cliente: " + this.observaciones);
        System.out.println("Hora de salida: " + this.horaDeSalida);
        System.out.println("Novedades: " + this.novedades);

        if (this.arreglos) {
            System.out.println("Arreglos hechos por el mecanico: " + this.arreglosMecanico);
        } else {
            System.out.println("No se agregó ningún arreglo hecho por el mecanico");
        }
    }

    public static void main(String[] args) {
        Taller6_2_6 registro = new Taller6_2_6();
        registro.mostrarInformacion();
    }
}
