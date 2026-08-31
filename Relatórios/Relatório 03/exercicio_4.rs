use std::io;

fn calcular_pontuacao(prova1: f64, prova2: f64, redacao: f64) -> f64{
    let mut npt: f64;
    let mut pf: f64;

    npt = (prova1 + prova2)/2.0;
    pf = (npt*0.6)+(redacao*0.4);

    pf
}

fn main() {
    let mut e1 = String::new();
    let mut e2 = String::new();
    let mut e3 = String::new();
    let mut pontuacao: f64;

    println!("Insira a nota da Prova Teorica 1: ");
    io::stdin().read_line(&mut e1).expect("Erro ao ler");
    let p1: f64 = e1.trim().parse().unwrap_or(0.0);
    println!("Insira a nota da Prova Teorica 2: ");
    io::stdin().read_line(&mut e2).expect("Erro ao ler");
    let p2: f64 = e2.trim().parse().unwrap_or(0.0);
    println!("Insira a nota da Redacao: ");
    io::stdin().read_line(&mut e3).expect("Erro ao ler");
    let redacao: f64 = e3.trim().parse().unwrap_or(0.0);

    pontuacao = calcular_pontuacao(p1, p2, redacao);
    if pontuacao >= 60.0{
        println!("Parabens! Candidato aprovado no processo seletivo.\nPontuacao Final: {}", pontuacao);
    }
    else{
        println!("Infelizmente o candidato nao atingiu a pontuacao minima de aprovacao.\nPontuacao Final: {}", pontuacao);
    }
}
