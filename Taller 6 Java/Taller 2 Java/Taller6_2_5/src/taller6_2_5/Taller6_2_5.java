package taller6_2_5;

/**
 *
 * @author User
 */
 import java.util.Scanner;


public class Taller6_2_5 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String[] productos = {"Producto 1", "Producto 2", "Producto 3", "Producto 4"};
        double[] precios = {1000, 2000, 3000, 4000};
        int[] cantidades = {0, 0, 0, 0};

        System.out.println("Bienvenido a la Droguería Mi Salud");
        System.out.println("Productos disponibles:");
        for (int i = 0; i < productos.length; i++) {
            System.out.println(i + 1 + ". " + productos[i] + " - Precio: $" + precios[i]);
        }

        boolean salir = false;
        while (!salir) {
            System.out.println("Seleccione una opción:");
            System.out.println("1. Comprar producto");
            System.out.println("2. Consultar producto");
            System.out.println("3. Devolver producto");
            System.out.println("4. Salir");
            int opcion = scanner.nextInt();

            switch (opcion) {
                case 1:
                    System.out.println("Ingrese el número del producto a comprar:");
                    int productoComprar = scanner.nextInt();
                    System.out.println("Ingrese la cantidad a comprar:");
                    int cantidadComprar = scanner.nextInt();
                    cantidades[productoComprar - 1] += cantidadComprar;
                    System.out.println("Compra realizada con éxito.");
                    break;
                case 2:
                    System.out.println("Ingrese el número del producto a consultar:");
                    int productoConsultar = scanner.nextInt();
                    System.out.println(productos[productoConsultar - 1] + " - Precio: $" + precios[productoConsultar - 1]);
                    break;
                case 3:
                    System.out.println("Ingrese el número del producto a devolver:");
                    int productoDevolver = scanner.nextInt();
                    System.out.println("Ingrese la cantidad a devolver:");
                    int cantidadDevolver = scanner.nextInt();
                    cantidades[productoDevolver - 1] -= cantidadDevolver;
                    System.out.println("Devolución realizada con éxito.");
                    break;
                case 4:
                    salir = true;
                    break;
                default:
                    System.out.println("Opción inválida.");
            }
        }
    }
}
