class FichaDeCriatura{
    constructor(nome, nivelDePerigo){
        this.nome = nome;
        this.nivelDePerigo = nivelDePerigo;
    }

    descrever(){
        return `Nome da Criatura: ${this.nome} | Nível de Perigo: ${this.nivelDePerigo}`;
    }
}

class DiarioMisterioso{
    #fichas = [];
    constructor(numero){
        this.numero = numero;
    }

    anotar(criatura, nivelDePerigo){
        const c = new FichaDeCriatura(criatura, nivelDePerigo);
        this.#fichas.push(c);
    }

    exibirFichas(){
        console.log(`--- Diário nº ${this.numero} ---`);
        this.#fichas.forEach ( f => console.log(`${f.descrever()}`));
    }
}

class Funcionario{
    constructor(nome, cargo){
        this.nome = nome;
        this.cargo = cargo;
    }
}

class CabanaDoMisterio{
    #funcionarios = [];
    constructor(dono){
        this.dono = dono;
    }

    contratar(funcionario){
        this.#funcionarios.push(funcionario);
    }

    abrirAsPortas(){
        console.log(`\nBem vindo à Cabana do Mistério, meu nome é ${this.dono} e sou o dono! Se precisar de ajuda, chame algum funcionário!`);
        this.#funcionarios.forEach( f => console.log(`${f.nome} | ${f.cargo}`));
    }
}

//MAIN

const d = new DiarioMisterioso(3);
d.anotar("Gnomos", 5);
d.anotar("Gremloblin", 8);

d.exibirFichas();

const f1 = new Funcionario("Soos", "Faz-Tudo");
const f2 = new Funcionario("Wendy", "Caixa");

const cab = new CabanaDoMisterio("Tio Avô Stan");
cab.contratar(f1);
cab.contratar(f2);

cab.abrirAsPortas();

// Na composição, uma classe cria e controla um objeto, ou seja, ele depende totalmente dela para existir. No caso do meu programa,
// só existe uma 'FichaDeCriatura' se existir um 'DiarioMisterioso', as fichas só são criadas dentro daquela classe. 

// Já na agregação, a classe recebe um objeto pronto, ou seja, os objetos continuam exisitindo mesmo se a classe não existir (são
// independentes). No caso do meu programa, os funcionários, criados pela classe 'Funcionario', existem independentemente da classe 'CabanaDoMisterio'.
//  Mesmo que não exista uma Cabana, Soos e Wendy continuam existindo. 
