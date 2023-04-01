package taller6_3_8;

import java.util.Scanner;

class Cliente {
    private String nombre;
    private boolean haPresentadoCurso;
    private boolean haAprobadoCurso;

    public Cliente(String nombre) {
        this.nombre = nombre;
        this.haPresentadoCurso = false;
        this.haAprobadoCurso = false;
    }

    public String getNombre() {
        return nombre;
    }

    public void setHaPresentadoCurso(boolean haPresentadoCurso) {
        this.haPresentadoCurso = haPresentadoCurso;
    }

    public void setHaAprobadoCurso(boolean haAprobadoCurso) {
        this.haAprobadoCurso = haAprobadoCurso;
    }

    public boolean getHaPresentadoCurso() {
        return haPresentadoCurso;
    }

    public boolean getHaAprobadoCurso() {
        return haAprobadoCurso;
    }
}

class EscuelaAutomovilistica {
    private Cliente[] clientes;
    private int numClientes;

    public EscuelaAutomovilistica() {
        this.clientes = new Cliente[8];
        this.numClientes = 0;
    }

    public void registrarCliente(String nombre) {
        if (numClientes < 8) {
            clientes[numClientes] = new Cliente(nombre);
            numClientes++;
            System.out.println("Cliente registrado exitosamente.");
        } else {
            System.out.println("Lo siento, la escuela ya está llena.");
        }
    }

    public void consultarUsuarios() {
        for (int i = 0; i < numClientes; i++) {
            System.out.println(clientes[i].getNombre());
        }
    }

    public void registrarResultado(String nombre, boolean haPresentadoCurso, boolean haAprobadoCurso) {
        for (int i = 0; i < numClientes; i++) {
            if (clientes[i].getNombre().equals(nombre)) {
                clientes[i].setHaPresentadoCurso(haPresentadoCurso);
                clientes[i].setHaAprobadoCurso(haAprobadoCurso);
                System.out.println("Resultado registrado exitosamente.");
                return;
            }
        }
        System.out.println("No se encontró al cliente con ese nombre.");
    }

    public void consultarResultados() {
        for (int i = 0; i < numClientes; i++) {
            if (clientes[i].getHaPresentadoCurso()) {
                if (clientes[i].getHaAprobadoCurso()) {
                    System.out.println(clientes[i].getNombre() + " ha aprobado el curso.");
                } else {
                    System.out.println(clientes[i].getNombre() + " no ha aprobado el curso.");
                }
            } else {
                System.out.println(clientes[i].getNombre() + " ");
            }
        }
    }
}

public class Taller6_3_8 {

    public static void main(String[] args) {

        EscuelaAutomovilistica escuela = new EscuelaAutomovilistica();
        Scanner scanner = new Scanner(System.in);

        while (true) {

            System.out.println("Bienvenido a la escuela automovilística 'El Maestro'.");
            System.out.println("1. Registrar cliente");
            System.out.println("2. Consultar usuarios");
            System.out.println("3. Registrar resultado de prueba");
            System.out.println("4. Salir");
        

            int opcion = scanner.nextInt();
            scanner.nextLine();

            if (opcion == 1) {

                System.out.print("Ingrese el nombre del cliente: ");
                String nombre = scanner.nextLine();
                escuela.registrarCliente(nombre);

            } else if (opcion == 2) {

                escuela.consultarResultados();

            } else if (opcion == 3) {

                System.out.print("Ingrese el nombre del cliente: ");
                String nombre = scanner.nextLine();
                System.out.print("¿El cliente presentó el curso? (s/n): ");
                String presento = scanner.nextLine();
                boolean haPresentadoCurso = presento.equals("s");
                boolean haAprobadoCurso = false;
                    if (haPresentadoCurso) {
                        System.out.print("¿El cliente aprobó el curso? (s/n): ");
                        String aprobo = scanner.nextLine();
                        haAprobadoCurso = aprobo.equals("s");
                    }
                            escuela.registrarResultado(nombre, haPresentadoCurso, haAprobadoCurso);

                    } else if (opcion == 4) {

                      break;

                    }
        }
                    scanner.close();
    }
}