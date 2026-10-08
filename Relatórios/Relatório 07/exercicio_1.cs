using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

public class CombatenteDeGondor{
	public string nome {get; private set;}
	public string povo {get; private set;}
	public string posto {get; private set;}

	public CombatenteDeGondor(string nome, string povo, string posto){
		this.nome = nome;
		this.povo = povo;
		this.posto = posto;
	}

	public string armamento {get; private set;} = "Desarmado";

	public void Equipar(string arma){
		armamento = arma; 
	}

	public void ApresentarUnidade(){
		if (armamento != "Desarmado"){
			Console.WriteLine($"\n--- DADOS DO COMBATENTE ---");
			Console.WriteLine($"- Nome: {nome}");
			Console.WriteLine($"- Povo: {povo}");
			Console.WriteLine($"- Posto: {posto}");
			Console.WriteLine($"- Armamento: {armamento}\n");
		}
	}
}

public class Program{
	public static void Main(string[] args){
		CombatenteDeGondor c1 = new CombatenteDeGondor("Zé", "Elfo", "Soldado");
		CombatenteDeGondor c2 = new CombatenteDeGondor("Marcos", "Hobbit", "Capitão");
		CombatenteDeGondor c3 = new CombatenteDeGondor("Chico", "Hobbit", "Guarda");

		c1.Equipar("Espada");

		c1.ApresentarUnidade();
		c2.ApresentarUnidade();
		c3.ApresentarUnidade();

		c1.posto = "General";

		//Erro observado:
		//HelloWorld.cs(46,6): error CS0272: The property or indexer `CombatenteDeGondor.posto' cannot be used in this context because the set accessor is inaccessible
		//HelloWorld.cs(9,36): (Location of the symbol related to previous error)
	}
}
