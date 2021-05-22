package br.sisacamic.model;

public class Aluno {
    
    //Propriedades/Atributos
    private int idAluno;
    private int ra;
    private String nomeAluno;
    private Curso curso;
    
    //Construtores
    public Aluno() {
    }

    public Aluno(int idAluno, int ra, String nomeAluno, Curso curso) {
        this.idAluno = idAluno;
        this.ra = ra;
        this.nomeAluno = nomeAluno;
        this.curso = curso;
    }
    
    //Getters e Setters
    public int getIdAluno() {
        return idAluno;
    }

    public void setIdAluno(int idAluno) {
        this.idAluno = idAluno;
    }

    public int getRa() {
        return ra;
    }

    public void setRa(int ra) {
        this.ra = ra;
    }

    public String getNomeAluno() {
        return nomeAluno;
    }

    public void setNomeAluno(String nomeAluno) {
        this.nomeAluno = nomeAluno;
    }

    public Curso getCurso() {
        return curso;
    }

    public void setCurso(Curso curso) {
        this.curso = curso;
    }
    
}
