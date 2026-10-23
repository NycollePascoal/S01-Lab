class UsuarioDeNen{
    constructor(nome){
        this.nome = nome;
    }

    atacar(alvo){
        console.log(`${this.nome} está atacando ${alvo.nome}.`);
    }
}

class Intensificador extends UsuarioDeNen{
    atacar(alvo){
        console.log(`${this.nome} usou Impacto Big Bang contra ${alvo.nome}.`);
    }
}

class Transmutador extends UsuarioDeNen{
    atacar(alvo){
        console.log(`${this.nome} usou Palma Elétrica contra ${alvo.nome}.`);
    }
}

class Materializador extends UsuarioDeNen{
    atacar(alvo){
        console.log(`${this.nome} usou Corrente do Julgamento contra ${alvo.nome}.`);
    }
}

class Aranha{
    constructor(nome, numero){
        this.nome = nome;
        this.numero = numero;
    }
}

class TrupeFantasma{
    #aranhas;
    constructor(cidade, aranhas = []){
        this.cidade = cidade;
        this.#aranhas = aranhas;
    }

    revelarAranhas(){
    console.log(`--- Cidade: ${this.cidade} ---`);
    this.#aranhas.forEach ( a => console.log(`Número: ${a.numero} | Nome: ${a.nome}`));
    }

    buscarAranha(numero){
        return this.#aranhas.find(a => a.numero === numero);
    }
}

//MAIN

const a1 = new Aranha("Will", 52);
const a2 = new Aranha("Steve", 78);

const t1 = new TrupeFantasma("Hawkins", [a1, a2]);
t1.revelarAranhas();
const encontrada = t1.buscarAranha(78);

const usuarios = [
    new Intensificador("Eleven"),
    new Transmutador("Nancy"),
    new Materializador("Max")
];

usuarios.forEach ( u => u.atacar(encontrada));
