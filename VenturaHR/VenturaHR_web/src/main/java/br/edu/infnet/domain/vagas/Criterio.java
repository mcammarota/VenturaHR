
package br.edu.infnet.domain.vagas;

public class Criterio {
    
    private int id;
    private String descricao;
    private int perfil;
    private int peso;
    
    public Criterio(){
        
    }

    public Criterio(int id){
        
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public int getPerfil() {
        return perfil;
    }

    public void setPerfil(int perfil) {
        this.perfil = perfil;
    }

    public int getPeso() {
        return peso;
    }

    public void setPeso(int peso) {
        this.peso = peso;
    }
    
    
}
