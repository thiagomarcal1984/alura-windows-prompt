package br.com.teste;

import br.com.teste.models.Modelo;
import br.com.teste.models.Dados;

public class Teste {
    public static void main(String ... args) {
        System.out.println(Modelo.helloWorld());
        Dados dados = new Dados();
        System.out.println(dados.getDados());
    }
}
