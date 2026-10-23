class Pokemon{
    #vida;
    constructor(apelido, tipo, vidaInicial){
        this.apelido = apelido;
        this.tipo = tipo;
        this.#vida = vidaInicial;
    }

    get vida(){
        return this.#vida;
    }

    sofrerDano(pontos){
        this.#vida -= pontos;
        if (this.#vida < 0){
            this.#vida = 0;
        }
        console.log(`\n${this.apelido} sofreu um dano!\nVida restante: ${this.#vida}`);
    }

    atacar(alvo){
        console.log(`${this.apelido} ataca ${alvo.apelido}!`);
        alvo.sofrerDano(10);
    }
}

class Squirtle extends Pokemon{
    constructor(apelido, vidaInicial){
        super(apelido, "Água", vidaInicial);
    }

    atacar(alvo){
        console.log(`\n${this.apelido} usou Bolhas em ${alvo.apelido}!`);
        alvo.sofrerDano(20);
    }
}

class Bulbasaur extends Pokemon{
    constructor(apelido, vidaInicial){
        super(apelido, "Planta", vidaInicial);
    }

    atacar(alvo){
        console.log(`\n${this.apelido} usou Chicote de Vinha em ${alvo.apelido}!`);
        alvo.sofrerDano(15);
    }
}

//MAIN

const sq = new Squirtle("Zezinho", 20);
const bul = new Bulbasaur("Luizinho", 30);

bul.atacar(sq);
sq.atacar(bul);
sq.atacar(bul);

console.log(`\n---Resuldados ---`);
console.log(`${bul.apelido} (Bulbasaur) - Vida: ${bul.vida}`);
console.log(`${sq.apelido} (Squirtle) - Vida: ${sq.vida}`);

//console.log(`Vida de ${sq.apelido}: ${sq.#vida}`);
//Erro observado:
//SyntaxError: Private field '#vida' must be declared in an enclosing class
