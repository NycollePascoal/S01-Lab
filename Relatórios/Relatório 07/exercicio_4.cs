using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

public class EntidadeCosmica{
	public string nome {get; set;}
	public string origem {get; set;} = "Desconhecida";

	public EntidadeCosmica(string nome, string origem){
		this.nome = nome;
		this.origem = origem;
	}

	public virtual void Manifestar(){
		Console.WriteLine($"Zib Zib Zib Zib ~ Meu nome é {nome}!");
		if(origem != "Desconhecida"){
			Console.WriteLine($"Zib Zib Zob Zob ~ Venho de {origem}!");
		}
	}
}

public class Profundo : EntidadeCosmica{
	public Profundo(string nome, string origem) : base(nome, origem){}
	public override void Manifestar(){
		Console.WriteLine($"Zib Bleh Zab Blub Blub ~ Meu nome é {nome}, vim roubar suas vacas!");
	}
}

public class MiGo : EntidadeCosmica{
	public MiGo(string nome, string origem) : base(nome, origem){}
	public override void Manifestar(){
		base.Manifestar();
		Console.WriteLine($"U-I-I-A-I ~ Só quero um amigo!");
	}
}

public class Pesquisador{
	public string nome {get; set;}

	public Pesquisador(string nome){
		this.nome = nome;
	}

	private List<EntidadeCosmica> _cosmico = new List<EntidadeCosmica>();

	public void Catalogar(EntidadeCosmica e){
		this._cosmico.Add(e);
	} 

	public void LerCatalogo(){
		Console.WriteLine($"--- Catálogo de Manifestações Cósmicas ---\n");
		foreach(var c in _cosmico){
			c.Manifestar();
			Console.WriteLine($"-------------\n");
		}
	}
}


public class Program{
	public static void Main(string[] args){
		EntidadeCosmica ec = new EntidadeCosmica("Gato Alien Zib Zib Zib", "Netuno");
		Profundo ep = new Profundo("Gato Alien Zib Zib das Profundezas", "Desconhecida");
		MiGo em = new MiGo("Gato Alien UIIAI", "Marte");
		Pesquisador p = new Pesquisador("Cachorro Curioso");

		p.Catalogar(ec);
		p.Catalogar(ep);
		p.Catalogar(em);

		p.LerCatalogo();
	}
}
