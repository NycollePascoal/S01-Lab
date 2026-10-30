import java.util.ArrayList;

public class Main {
  public static void main(String[] args){
    ItemDoCardapio i1 = new ItemDoCardapio("Cappuccino", 11.9);
    ItemDoCardapio i2 = new ItemDoCardapio("Bolo de Chocolate", 19.9);
    ComboLeblanc c1 = new ComboLeblanc("Cafézinho com Pão na Chapa", 14.9);
    CafeLeblanc cafe = new CafeLeblanc();
    cafe.adicionar(i1);
    cafe.adicionar(i2);
    cafe.adicionar(c1);

    System.out.println("--- CARDÁPIO ---");
    cafe.mostrarCardapio();
  }
}

class ItemDoCardapio{
  private String nome;
  private double preco;

  public ItemDoCardapio(String nome, double preco){
    this.nome = nome;
    this.preco = preco;
  }

  public String getNome(){
    return nome;
  }

  public double getPreco(){
    return preco;
  }

  public double precoFinal(){
    return preco;
  }
}

class ComboLeblanc extends ItemDoCardapio{
  public ComboLeblanc(String nome, double preco){
    super(nome, preco);
  }

  @Override
  public double precoFinal(){
    return (getPreco() * 0.9);
  }
}

class CafeLeblanc{
  private ArrayList<ItemDoCardapio> cardapio;

  public CafeLeblanc(){
    this.cardapio = new ArrayList<>();
  }

  public void adicionar(ItemDoCardapio item){
    cardapio.add(item);
  }

  public void mostrarCardapio(){
    for(ItemDoCardapio item : cardapio){
      System.out.println(item.getNome() + " - $" + item.precoFinal());
    }
  }
}
