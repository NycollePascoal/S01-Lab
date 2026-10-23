class Pistola{
    constructor(modelo){
        this.modelo = modelo;
    }
}

class AgenteProtocolo{
    #pistola;
    constructor(codinome, modeloDaPistola){
        this.codinome = codinome;
        this.#pistola = new Pistola(modeloDaPistola);
    }

    usarHabilidade(){
        throw new Error('O agente não tem habilidades.');
    }

    entrarEmCombate(){
        console.log(`Codinome: ${this.codinome} | Pistola: ${this.#pistola.modelo} | Habilidade: ${this.usarHabilidade()}`)
    }
}

class Controlador extends AgenteProtocolo{
    usarHabilidade(){
        return 'Cortina Tóxica';
    }
}

class Iniciador extends AgenteProtocolo{
    usarHabilidade(){
        return 'Drone Coruja';
    }
}

class Duelista extends AgenteProtocolo{
    usarHabilidade(){
        return 'Brisa de Impulso';
    }
}

class Esquadrao{
    #agentes;
    constructor(nome, agentes = []){
        this.nome = nome;
        this.#agentes = agentes;
    }

    iniciarPartida(){
        console.log(`Esquadrão: ${this.nome}`);
        console.log(`Entrando em combate...`);
        this.#agentes.forEach ( a => a.entrarEmCombate());
    }

    listarControladores(){
        return this.#agentes.filter ( a => a instanceof Controlador);
    }
}

//MAIN

const c1 = new Controlador("Mônica", "Sansão");
const c2 = new Controlador("Magali", "Melancia");
const i1 = new Iniciador("Cascão", "Guarda-Chuva");
const d1 = new Duelista("Cebolinha", "Sansão com Nó");

const squad = new Esquadrao("Turma da Mônica", [c1, c2, i1, d1]);

squad.iniciarPartida();

const controladores = squad.listarControladores();
console.log(`\nControladores:`)
controladores.forEach ( c => console.log(`${c.codinome}`));

const a1 = new AgenteProtocolo("Bidu", "Ossinho");
//a1.entrarEmCombate();
//Erro observado:
//Error: O agente não tem habilidades.
