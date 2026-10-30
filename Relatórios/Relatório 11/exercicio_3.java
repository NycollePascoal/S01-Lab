import java.util.HashMap;

public class Main {
  public static void main(String[] args) {
    Alienigena a1 = new Alienigena("Zib Zib");
    EspiritoYoukai e1 = new EspiritoYoukai("Gasparzinho"); 

    MapaDeAvistamentos mapa = new MapaDeAvistamentos();
    mapa.registrar("Fazenda", a1);
    mapa.registrar("Casa Monstro", e1); 

    mapa.investigar("Fazenda");
    mapa.investigar("Casa Monstro");
    mapa.investigar("Parque de Diversões Abandonado");
  }
}

interface Sobrenatural{
  void manifestar();
}

class Alienigena implements Sobrenatural{
  private String nome;

  public Alienigena(String nome){
    this.nome = nome;
  }

  @Override
  public void manifestar(){
    System.out.println("Nome: " + nome + " - Gosta de abduzir vacas.");
  }
}

class EspiritoYoukai implements Sobrenatural{
  private String nome;

  public EspiritoYoukai(String nome){
    this.nome = nome;
  }

  @Override
  public void manifestar(){
    System.out.println("Nome: " + nome + " - Gosta de assustar pessoas.");
  }
}

class MapaDeAvistamentos{
  private HashMap<String, Sobrenatural> avistamentos;

  public MapaDeAvistamentos(){
    avistamentos = new HashMap<>();
  }

  public void registrar(String local, Sobrenatural ser){
    avistamentos.put(local, ser);
  }

  public void investigar(String local){
    Sobrenatural sobrenatural = avistamentos.get(local);
    if (sobrenatural == null){
      System.out.println("O local " + local + " parece tranquilo.");
    }
    else{
      System.out.println("Há uma manifestação no local - " + local + ": ");
      sobrenatural.manifestar();
    }
  }
}
