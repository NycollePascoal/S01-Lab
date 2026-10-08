using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

public class Grimorio{
	public string feiticoFavorito {get; set;} = "Nenhum";

	public Grimorio(){}

	public void Abrir(){
		Console.WriteLine($"Feitiço Favorito: {feiticoFavorito}");
	}
}

public class Companheiro{
	public string nome {get; set;}
	public string funcao {get; set;}

	public Companheiro(string nome, string funcao){
		this.nome = nome;
		this.funcao = funcao;
	}

	public void Apresentar(){
		Console.WriteLine($"Olá, meu nome é {nome} e minha função é {funcao}!");
	}
}

public class Maga{

	public string nomeMaga {get; set;}
	//Composição
	public Grimorio feiticoFavorito {get; set;}

	public Maga(string nomeMaga){
		this.nomeMaga = nomeMaga;
		this.feiticoFavorito = new Grimorio();
	}

	private List<Companheiro> _companheiro = new List<Companheiro>(); 

	//Agregação
	public void Recrutar(Companheiro c){
        this._companheiro.Add(c);
    }

	public void MostrarGrupo(){
		Console.WriteLine($"--- Grupo atual de {nomeMaga} ---");
		foreach(var c in _companheiro){
			c.Apresentar();
		}
	}
}

public class Program{
	public static void Main(string[] args){
		Companheiro c1 = new Companheiro("Docinho", "Guerreira");
		Companheiro c2 = new Companheiro("Lindinha", "Conselheira");
		Maga m1 = new Maga("Florzinha");

		m1.Recrutar(c2);
		m1.Recrutar(c1);

		m1.feiticoFavorito.feiticoFavorito = "Energia Vermelha";

		m1.MostrarGrupo();
		m1.feiticoFavorito.Abrir(); 

		/*A compisição é quando uma parte não pode existir sem o todo, no caso do meu programa, 
		um "Grimorio" contendo um feitiço favorito não pode existir um uma "Maga"*/
		/*Já na agregação, é quando, uma parte faz parte do todo, mas ela é independente dele. Nesse caso,
		os "companheiros" fazem parte de "Maga", mas continuam existindo mesmo se ela não for instanciada*/
	}
}
