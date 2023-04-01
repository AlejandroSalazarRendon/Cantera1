/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package taller6_2_7;

/**
 *
 * @author User
 */
import java.util.Scanner;

public class Taller6_2_7 {
    
    private double peso;
    private double estatura;
    
    public Taller6_2_7(double peso, double estatura) {
        this.peso = peso;
        this.estatura = estatura;
    }
    
    public double calcularIMC() {
        return peso / (estatura * estatura);
    }
    
    public String determinarRangoIMC() {
        double imc = calcularIMC();
        
        if (imc < 18.5) {
            return "Bajo peso";
        } else if (imc < 25) {
            return "Peso normal";
        } else if (imc < 30) {
            return "Sobrepeso";
        } else {
            return "Obesidad";
        }
    }
    
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        
        System.out.print("Ingrese su peso en kilogramos: ");
        double peso = input.nextDouble();
        
        System.out.print("Ingrese su estatura en metros: ");
        double estatura = input.nextDouble();
        
        Taller6_2_7 calculadoraIMC = new Taller6_2_7(peso, estatura);
        
        double imc = calculadoraIMC.calcularIMC();
        
        System.out.printf("Su IMC es %.2f%n", imc);
        
        String rangoIMC = calculadoraIMC.determinarRangoIMC();
        System.out.println("Usted esta en  " + rangoIMC);
    }

}

