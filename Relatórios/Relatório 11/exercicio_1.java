public class Main {
  public static void main(String[] args){
    Morador howl = new Mago("Howl", "Transformação");
    Morador calcifer = new DemonioDoFogo("Calcifer");

    howl.apresentar();
    calcifer.apresentar();

    //Morador m = new Morador("Morador Desconhecido");
    //Erro observado:
    //Main.java:11: error: Morador is abstract; cannot be instantiated
  }
}

abstract class Morador{
  private String nome;

  public Morador(String nome){
    this.nome = nome;
  }

  public String getNome(){
    return nome;
  }

  public abstract void apresentar();
}

class Mago extends Morador{
  private String feitico;

  public Mago(String nome, String feitico){
    super(nome);
    this.feitico = feitico; 
  }

  @Override
  public void apresentar(){
    System.out.println("Meu nome é " + getNome() + ", sou um mago e meu feitiço é: " + feitico + ".");
  }
}

class DemonioDoFogo extends Morador{
  public DemonioDoFogo(String nome){
    super(nome);
  }

  @Override
  public void apresentar(){
    System.out.println("Meu nome é " + getNome() + ", sou um demônio do fogo e faço o castelo andar!");
  }
}
