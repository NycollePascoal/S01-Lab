using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

public class Pokemon{
	public string especie {get; set;}
	public int nivel {get; set;}

	public Pokemon(string especie, int nivel){
		this.especie = especie;
		this.nivel = nivel;
	}

	public virtual void Atacar(){
        Console.WriteLine($"{especie} de nível {nivel} atacou!");
	}
}
public class TipoPlanta : Pokemon{
	public TipoPlanta(string especie, int nivel) : base(especie, nivel){}
	public override void Atacar(){
		Console.WriteLine($"{especie} de nível {nivel} atacou usando Tornado de Folhas!");
	}

}

public class TipoEletrico : Pokemon{
	public TipoEletrico(string especie, int nivel) : base(especie, nivel){}
	public override void Atacar(){
		base.Atacar();
		Console.WriteLine($"{especie} usou Descarga Elétrica!");
	}
}

public class Program{
	public static void Main(string[] args){
		List<Pokemon> pokemon = new List<Pokemon>();

		Pokemon p1 = new Pokemon("Eevee", 4);
		TipoPlanta p2 = new TipoPlanta("Chikorita", 7);
		TipoEletrico p3 = new TipoEletrico("Pikachu", 3);

		pokemon.Add(p1);
		pokemon.Add(p2);
		pokemon.Add(p3);

		foreach (var p in pokemon){
			p.Atacar();
		}
	}
}
