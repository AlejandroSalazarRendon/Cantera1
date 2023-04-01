/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package taller6_2_4;

/**
 *
 * @author User
 */
import java.util.Scanner;

public class Taller6_2_4 {
    private String nombrePelicula;
    private String novedad;
    private int opcion;
    private int comentario;
    private Scanner input;

    public Taller6_2_4() {
        input = new Scanner(System.in);
    }

    public void menu() {
        System.out.println("Video tienda para usuarios del barrio porvenir");
        System.out.println("Elija una opción : ");
        System.out.println("1. Alquilar película.");
        System.out.println("2. Consultar peliculas disponibles.");
        System.out.println("3. Recibir pelicula.");
        opcion = input.nextInt();

        switch (opcion) {
            case 1:
                alquilarPelicula();
                break;
            case 2:
                consultarPeliculas();
                break;
            case 3:
                recibirPelicula();
                break;
            default:
                System.out.println("La opción no es válida");
        }
    }

    private void alquilarPelicula() {
        System.out.println("Ingrese el nombre de la película: ");
        nombrePelicula = input.next();
        System.out.println("Alquilando " + nombrePelicula + "...");
    }

    private void consultarPeliculas() {
        System.out.println("Listado de peliculas disponibles: ");
        System.out.println("Pelicula 1");
        System.out.println("Pelicula 2");
        System.out.println("Pelicula 3");
    }

    private void recibirPelicula() {
        System.out.println("¿Desea realizar algún comentario?");
        System.out.println("1. Si");
        System.out.println("2. No");
        comentario = input.nextInt();
        if (comentario == 1) {
            System.out.println("Ingrese su comentario");
            novedad = input.next();
            System.out.println("Novedad registrada correctamente");
        } else {
            System.out.println("Saliendo del sistema");
        }
    }

    public static void main(String[] args) {
        Taller6_2_4 tienda = new Taller6_2_4();
        tienda.menu();
    }
}