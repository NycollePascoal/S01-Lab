import java.util.ArrayList;

public class Main {
  public static void main(String[] args) {
    Slime slime = new Slime("Slime Grudento");
    Mandragora mandragora = new Mandragora("Mandragora Gritante");

    Cozinheiro cozinheiro = new Cozinheiro("Remy", "Alumínio");

    cozinheiro.adicionarIngrediente(slime);
    cozinheiro.adicionarIngrediente(mandragora);

    cozinheiro.servirBanquete();
  }
}

abstract class Monstro{
  private String nome;

  public Monstro(String nome){
    this.nome = nome;
  }

  public String getNome(){
    return nome;
  }

  public abstract String receita();
}

class Slime extends Monstro{
  public Slime(String nome){
    super(nome);
  }

  @Override
  public String receita(){
    return "Slime Cozido - Coloque para cozinhar em água fervente, espere 15 minutos, tempere como preferir e sirva.";
  }
}

class Mandragora extends Monstro{
  public Mandragora(String nome){
    super(nome);
  }
  @Override
  public String receita(){
    return "Mandragora Frita - Retire as folhas, tempere como preferir e coloque para fritar. Assim que estiver dourado, está pronto para comer.";
  }
}

class Panela{
  private String material;

  public Panela(String material){
    this.material = material;
  }

  public String getMaterial(){
    return material;
  }
}

class Cozinheiro{
  private String nome;
  private Panela panela;
  private ArrayList<Monstro> ingredientes;

  public Cozinheiro(String nome, String materialDaPanela){
    this.nome = nome;
    this.panela = new Panela(materialDaPanela);
    this.ingredientes = new ArrayList<>();
  }

  public void adicionarIngrediente(Monstro monstro){
    ingredientes.add(monstro);
  }

  public void servirBanquete(){
    System.out.println("Cozinheiro: " + nome + " - Usando panela de " + panela.getMaterial());
    for(Monstro monstro : ingredientes){
      System.out.println(monstro.getNome());
      System.out.println(monstro.receita());
    }
  }
}

//Na composição, uma classe cria e controla um objeto, ou seja, ele depende totalmente dela para existir. 
//No caso do meu programa, a 'Panela' é criada dentro da classe 'Cozinheiro'. Então, só existe uma panela se existir um cozinheiro. 

//Já na agregação, a classe recebe um objeto pronto, ou seja, os objetos continuam existindo mesmo se a classe não existir 
//(são independentes). No caso do meu programa, os monstros (como o Slime) são criados por fora e só foram adicionados em uma lista dentro 
//de 'Cozinheiro'. Mesmo que não exista um cozinheiro, os monstros continuam existindo. 
