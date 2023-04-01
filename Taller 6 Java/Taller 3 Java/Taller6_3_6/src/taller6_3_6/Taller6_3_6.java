package taller6_3_6;

import java.util.ArrayList;
import java.util.Scanner;

class Contacto {
    private String nombreCompleto;
    private String telefono;
    private String organizacion;

    public Contacto(String nombreCompleto, String telefono, String organizacion) {
        this.nombreCompleto = nombreCompleto;
        this.telefono = telefono;
        this.organizacion = organizacion;
    }

    public String getNombreCompleto() {
        return nombreCompleto;
    }

    public void setNombreCompleto(String nombreCompleto) {
        this.nombreCompleto = nombreCompleto;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getOrganizacion() {
        return organizacion;
    }

    public void setOrganizacion(String organizacion) {
        this.organizacion = organizacion;
    }
}

class Agenda {
    private ArrayList<Contacto> contactos;

    public Agenda() {
        contactos = new ArrayList<>();
    }

    public void agregarContacto(Contacto contacto) {
        if (contactos.size() < 3) {
            boolean existe = false;
            for (Contacto c : contactos) {
                if (c.getTelefono().equals(contacto.getTelefono())) {
                    existe = true;
                    break;
                }
            }
            if (!existe) {
                contactos.add(contacto);
                System.out.println("Contacto agregado.");
            } else {
                System.out.println("El número ya está almacenado.");
            }
        } else {
            System.out.println("No se pueden agregar más contactos.");
        }
    }

    public void buscarContacto(String telefono) {
        for (Contacto c : contactos) {
            if (c.getTelefono().equals(telefono)) {
                System.out.println("Nombre: " + c.getNombreCompleto());
                System.out.println("Teléfono: " + c.getTelefono());
                System.out.println("Organización: " + c.getOrganizacion());
                return;
            }
        }
        System.out.println("No se encontró el contacto.");
    }

    public void eliminarContacto(String telefono) {
        for (int i = 0; i < contactos.size(); i++) {
            if (contactos.get(i).getTelefono().equals(telefono)) {
                contactos.remove(i);
                System.out.println("Contacto eliminado.");
                return;
            }
        }
        System.out.println("No se encontró el contacto.");
    }
}

public class Taller6_3_6 {
    public static void main(String[] args) {
        Agenda agenda = new Agenda();
        Scanner scanner = new Scanner(System.in);
        boolean terminar = false;

        while (!terminar) {
            System.out.println("1. Agregar contacto");
            System.out.println("2. Buscar contacto");
            System.out.println("3. Eliminar contacto");
            System.out.println("4. Terminar");
            int opcion = scanner.nextInt();
            scanner.nextLine();

            switch (opcion) {
                case 1:
                    System.out.print("Nombre completo: ");
                    String nombreCompleto = scanner.nextLine();
                    System.out.print("Teléfono: ");
                    String telefono = scanner.nextLine();
                    System.out.print("Organización: ");
                    String organizacion = scanner.nextLine();
                    Contacto contacto = new Contacto(nombreCompleto, telefono, organizacion);
                    agenda.agregarContacto(contacto);
                    break;
                case 2:
                    System.out.print("Teléfono: ");
                    telefono = scanner.nextLine();
                    agenda.buscarContacto(telefono);
                    break;
                case 3:
                    System.out.print("Teléfono: ");
                    telefono = scanner.nextLine();
                    agenda.eliminarContacto(telefono);
                    break;
                case 4:
                    terminar = true;
                    break;
                default:
                    System.out.println("Opción inválida.");
            }
        }
        scanner.close();
    }
}